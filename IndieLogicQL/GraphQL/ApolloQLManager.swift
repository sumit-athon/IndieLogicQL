//
//  ApolloQLManager.swift
//  ApolloQLManager
//
//  Created by Sumit on 08/05/21.
//

import Foundation
import Apollo

open class ApolloQLManager {
    public static let shared = ApolloQLManager()
    public var graphQLendPoint: String!
    public var graphQLAuthKey: String?
    
    private init (){}

    private(set) lazy var apollo: ApolloClient = {
        
        let url = URL(string: graphQLendPoint)
        if url == nil {
            fatalError("Missing Server end point! Provide 'graphQLendPoint' value ")
        }
        let client = URLSessionClient()
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let provider = NetworkInterceptorProvider(client: client, store: store, authKey: graphQLAuthKey)
        let transport = RequestChainNetworkTransport(interceptorProvider: provider,
                                                     endpointURL: url!)
        return ApolloClient(networkTransport: transport, store: store)
    }()

    // Fetch Events filtered by slug
    open func fetchEventBySlug(slug: String, product: String = "Kodak", success: @escaping([FetchEventBySlugQuery.Data.AllEvent]?) -> Void, failure: @escaping(Error) -> Void) {
        self.apollo.fetch(query: FetchEventBySlugQuery(slug: slug, product: product), resultHandler: { result in
            switch result {
            case .success(let graphResult):
                let events = graphResult.data?.allEvents
                success(events)
            case .failure(let error):
                failure(error)
                print(error.localizedDescription)
            }
        })
    }
    
    // Fetch Events filtered by slug
    open func fetchAllEventInASC(product: String = "Kodak", success: @escaping([FetchAllEventAscQuery.Data.AllEvent]?) -> Void, failure: @escaping(Error) -> Void) {
        self.apollo.fetch(query: FetchAllEventAscQuery(product: product), resultHandler: { result in
            switch result {
            case .success(let graphResult):
                let events = graphResult.data?.allEvents
                success(events)
            case .failure(let error):
                failure(error)
                print(error.localizedDescription)
            }
        })
    }
    
    // Fetch Events filtered by slug
    open func fetchAllEventInDESC(product: String = "Kodak", success: @escaping([FetchAllEventDescQuery.Data.AllEvent]?) -> Void, failure: @escaping(Error) -> Void) {
        self.apollo.fetch(query: FetchAllEventDescQuery(product: product), resultHandler: { result in
            switch result {
            case .success(let graphResult):
                let events = graphResult.data?.allEvents
                success(events)
            case .failure(let error):
                failure(error)
                print(error.localizedDescription)
            }
        })
    }
}

class TokenAddingInterceptor: ApolloInterceptor {
    
    var authKey: String?
    init(key: String?) { self.authKey = key  }
    
    func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
        if let key = authKey {
            request.addHeader(name: "Authorization", value: "Bearer \(key)")
        }
        chain.proceedAsync(request: request, response: response, completion: completion)
    }
}

class NetworkInterceptorProvider: LegacyInterceptorProvider {
    
    var authKey: String?
    
    init(client: URLSessionClient = URLSessionClient(),
                shouldInvalidateClientOnDeinit: Bool = true,
                store: ApolloStore, authKey: String?) {
        super.init(client: client, store: store)
        self.authKey = authKey
    }
    
    override func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
        var interceptors = super.interceptors(for: operation)
        interceptors.insert(TokenAddingInterceptor(key: authKey), at: 0)
        return interceptors
    }
}
