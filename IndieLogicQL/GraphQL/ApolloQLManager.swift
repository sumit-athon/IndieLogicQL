//
//  ApolloQLManager.swift
//  ApolloQLManager
//
//  Created by Sumit on 08/05/21.
//

import Foundation
import Apollo

open class ApolloQLManager {
    static let shared = ApolloQLManager()

    private init (){}

    private(set) lazy var apollo: ApolloClient = {
        let client = URLSessionClient()
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let provider = NetworkInterceptorProvider(client: client, store: store)
        let url = URL(string: Config.DatoCMS.baseURL)!
        let transport = RequestChainNetworkTransport(interceptorProvider: provider,
                                                     endpointURL: url)
        return ApolloClient(networkTransport: transport, store: store)
    }()

    // Fetch Events filtered by slug
    open func fetchEventBySlug(slug: String, success: @escaping([FetchEventBySlugQuery.Data.AllEvent]?) -> Void, failure: @escaping(Error) -> Void) {
        self.apollo.fetch(query: FetchEventBySlugQuery(slug: slug), resultHandler: { result in
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
    func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
        request.addHeader(name: "Authorization", value: "Bearer \(Config.DatoCMS.apiKey)")
        chain.proceedAsync(request: request, response: response, completion: completion)
    }
}

class NetworkInterceptorProvider: LegacyInterceptorProvider {
    override func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
        var interceptors = super.interceptors(for: operation)
        interceptors.insert(TokenAddingInterceptor(), at: 0)
        return interceptors
    }
}
