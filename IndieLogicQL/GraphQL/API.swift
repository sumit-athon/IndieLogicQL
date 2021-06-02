// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class FetchEventBySlugQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query fetchEventBySlug($slug: String!) {
      allEvents(filter: {streamSlug: {eq: $slug}}) {
        __typename
        updatedAt
        streamState
        streamSlug
        id
        eventDisplayName
        expectedAudienceCount
        eventDatetime
        eventDesc
        createdAt
        artistName
        eventImage {
          __typename
          url
        }
      }
    }
    """

  public let operationName: String = "fetchEventBySlug"

  public var slug: String

  public init(slug: String) {
    self.slug = slug
  }

  public var variables: GraphQLMap? {
    return ["slug": slug]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("allEvents", arguments: ["filter": ["streamSlug": ["eq": GraphQLVariable("slug")]]], type: .nonNull(.list(.nonNull(.object(AllEvent.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allEvents: [AllEvent]) {
      self.init(unsafeResultMap: ["__typename": "Query", "allEvents": allEvents.map { (value: AllEvent) -> ResultMap in value.resultMap }])
    }

    /// Returns a collection of records
    public var allEvents: [AllEvent] {
      get {
        return (resultMap["allEvents"] as! [ResultMap]).map { (value: ResultMap) -> AllEvent in AllEvent(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: AllEvent) -> ResultMap in value.resultMap }, forKey: "allEvents")
      }
    }

    public struct AllEvent: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["EventRecord"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("streamState", type: .scalar(String.self)),
          GraphQLField("streamSlug", type: .scalar(String.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("eventDisplayName", type: .scalar(String.self)),
          GraphQLField("expectedAudienceCount", type: .scalar(String.self)),
          GraphQLField("eventDatetime", type: .scalar(String.self)),
          GraphQLField("eventDesc", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("artistName", type: .scalar(String.self)),
          GraphQLField("eventImage", type: .object(EventImage.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(updatedAt: String, streamState: String? = nil, streamSlug: String? = nil, id: String, eventDisplayName: String? = nil, expectedAudienceCount: String? = nil, eventDatetime: String? = nil, eventDesc: String? = nil, createdAt: String, artistName: String? = nil, eventImage: EventImage? = nil) {
        self.init(unsafeResultMap: ["__typename": "EventRecord", "updatedAt": updatedAt, "streamState": streamState, "streamSlug": streamSlug, "id": id, "eventDisplayName": eventDisplayName, "expectedAudienceCount": expectedAudienceCount, "eventDatetime": eventDatetime, "eventDesc": eventDesc, "createdAt": createdAt, "artistName": artistName, "eventImage": eventImage.flatMap { (value: EventImage) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var updatedAt: String {
        get {
          return resultMap["updatedAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var streamState: String? {
        get {
          return resultMap["streamState"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streamState")
        }
      }

      public var streamSlug: String? {
        get {
          return resultMap["streamSlug"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streamSlug")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var eventDisplayName: String? {
        get {
          return resultMap["eventDisplayName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "eventDisplayName")
        }
      }

      public var expectedAudienceCount: String? {
        get {
          return resultMap["expectedAudienceCount"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "expectedAudienceCount")
        }
      }

      public var eventDatetime: String? {
        get {
          return resultMap["eventDatetime"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "eventDatetime")
        }
      }

      public var eventDesc: String? {
        get {
          return resultMap["eventDesc"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "eventDesc")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var artistName: String? {
        get {
          return resultMap["artistName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "artistName")
        }
      }

      public var eventImage: EventImage? {
        get {
          return (resultMap["eventImage"] as? ResultMap).flatMap { EventImage(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "eventImage")
        }
      }

      public struct EventImage: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["FileField"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("url", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(url: String) {
          self.init(unsafeResultMap: ["__typename": "FileField", "url": url])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var url: String {
          get {
            return resultMap["url"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "url")
          }
        }
      }
    }
  }
}

public final class FetchAllEventAscQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query fetchAllEventASC {
      allEvents(orderBy: eventDatetime_DESC) {
        __typename
        updatedAt
        streamState
        streamSlug
        id
        eventDisplayName
        expectedAudienceCount
        eventDatetime
        eventDesc
        createdAt
        artistName
      }
    }
    """

  public let operationName: String = "fetchAllEventASC"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("allEvents", arguments: ["orderBy": "eventDatetime_DESC"], type: .nonNull(.list(.nonNull(.object(AllEvent.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allEvents: [AllEvent]) {
      self.init(unsafeResultMap: ["__typename": "Query", "allEvents": allEvents.map { (value: AllEvent) -> ResultMap in value.resultMap }])
    }

    /// Returns a collection of records
    public var allEvents: [AllEvent] {
      get {
        return (resultMap["allEvents"] as! [ResultMap]).map { (value: ResultMap) -> AllEvent in AllEvent(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: AllEvent) -> ResultMap in value.resultMap }, forKey: "allEvents")
      }
    }

    public struct AllEvent: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["EventRecord"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("streamState", type: .scalar(String.self)),
          GraphQLField("streamSlug", type: .scalar(String.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("eventDisplayName", type: .scalar(String.self)),
          GraphQLField("expectedAudienceCount", type: .scalar(String.self)),
          GraphQLField("eventDatetime", type: .scalar(String.self)),
          GraphQLField("eventDesc", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("artistName", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(updatedAt: String, streamState: String? = nil, streamSlug: String? = nil, id: String, eventDisplayName: String? = nil, expectedAudienceCount: String? = nil, eventDatetime: String? = nil, eventDesc: String? = nil, createdAt: String, artistName: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "EventRecord", "updatedAt": updatedAt, "streamState": streamState, "streamSlug": streamSlug, "id": id, "eventDisplayName": eventDisplayName, "expectedAudienceCount": expectedAudienceCount, "eventDatetime": eventDatetime, "eventDesc": eventDesc, "createdAt": createdAt, "artistName": artistName])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var updatedAt: String {
        get {
          return resultMap["updatedAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var streamState: String? {
        get {
          return resultMap["streamState"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streamState")
        }
      }

      public var streamSlug: String? {
        get {
          return resultMap["streamSlug"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streamSlug")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var eventDisplayName: String? {
        get {
          return resultMap["eventDisplayName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "eventDisplayName")
        }
      }

      public var expectedAudienceCount: String? {
        get {
          return resultMap["expectedAudienceCount"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "expectedAudienceCount")
        }
      }

      public var eventDatetime: String? {
        get {
          return resultMap["eventDatetime"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "eventDatetime")
        }
      }

      public var eventDesc: String? {
        get {
          return resultMap["eventDesc"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "eventDesc")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var artistName: String? {
        get {
          return resultMap["artistName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "artistName")
        }
      }
    }
  }
}

public final class FetchAllEventDescQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query fetchAllEventDESC {
      allEvents(orderBy: eventDatetime_DESC) {
        __typename
        updatedAt
        streamState
        streamSlug
        id
        eventDisplayName
        expectedAudienceCount
        eventDatetime
        eventDesc
        createdAt
        artistName
      }
    }
    """

  public let operationName: String = "fetchAllEventDESC"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("allEvents", arguments: ["orderBy": "eventDatetime_DESC"], type: .nonNull(.list(.nonNull(.object(AllEvent.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allEvents: [AllEvent]) {
      self.init(unsafeResultMap: ["__typename": "Query", "allEvents": allEvents.map { (value: AllEvent) -> ResultMap in value.resultMap }])
    }

    /// Returns a collection of records
    public var allEvents: [AllEvent] {
      get {
        return (resultMap["allEvents"] as! [ResultMap]).map { (value: ResultMap) -> AllEvent in AllEvent(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: AllEvent) -> ResultMap in value.resultMap }, forKey: "allEvents")
      }
    }

    public struct AllEvent: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["EventRecord"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("streamState", type: .scalar(String.self)),
          GraphQLField("streamSlug", type: .scalar(String.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("eventDisplayName", type: .scalar(String.self)),
          GraphQLField("expectedAudienceCount", type: .scalar(String.self)),
          GraphQLField("eventDatetime", type: .scalar(String.self)),
          GraphQLField("eventDesc", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("artistName", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(updatedAt: String, streamState: String? = nil, streamSlug: String? = nil, id: String, eventDisplayName: String? = nil, expectedAudienceCount: String? = nil, eventDatetime: String? = nil, eventDesc: String? = nil, createdAt: String, artistName: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "EventRecord", "updatedAt": updatedAt, "streamState": streamState, "streamSlug": streamSlug, "id": id, "eventDisplayName": eventDisplayName, "expectedAudienceCount": expectedAudienceCount, "eventDatetime": eventDatetime, "eventDesc": eventDesc, "createdAt": createdAt, "artistName": artistName])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var updatedAt: String {
        get {
          return resultMap["updatedAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }

      public var streamState: String? {
        get {
          return resultMap["streamState"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streamState")
        }
      }

      public var streamSlug: String? {
        get {
          return resultMap["streamSlug"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "streamSlug")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var eventDisplayName: String? {
        get {
          return resultMap["eventDisplayName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "eventDisplayName")
        }
      }

      public var expectedAudienceCount: String? {
        get {
          return resultMap["expectedAudienceCount"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "expectedAudienceCount")
        }
      }

      public var eventDatetime: String? {
        get {
          return resultMap["eventDatetime"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "eventDatetime")
        }
      }

      public var eventDesc: String? {
        get {
          return resultMap["eventDesc"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "eventDesc")
        }
      }

      public var createdAt: String {
        get {
          return resultMap["createdAt"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var artistName: String? {
        get {
          return resultMap["artistName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "artistName")
        }
      }
    }
  }
}
