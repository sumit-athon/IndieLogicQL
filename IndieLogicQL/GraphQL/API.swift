// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class FetchEventBySlugQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query fetchEventBySlug($slug: String!, $product: String!) {
      allEvents(filter: {streamSlug: {eq: $slug}, product: {eq: $product}}) {
        __typename
        updatedAt
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
        heroImage {
          __typename
          url
        }
        gatingsubscription {
          __typename
          gated
        }
      }
    }
    """

  public let operationName: String = "fetchEventBySlug"

  public var slug: String
  public var product: String

  public init(slug: String, product: String) {
    self.slug = slug
    self.product = product
  }

  public var variables: GraphQLMap? {
    return ["slug": slug, "product": product]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("allEvents", arguments: ["filter": ["streamSlug": ["eq": GraphQLVariable("slug")], "product": ["eq": GraphQLVariable("product")]]], type: .nonNull(.list(.nonNull(.object(AllEvent.selections))))),
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
          GraphQLField("streamSlug", type: .scalar(String.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("eventDisplayName", type: .scalar(String.self)),
          GraphQLField("expectedAudienceCount", type: .scalar(String.self)),
          GraphQLField("eventDatetime", type: .scalar(String.self)),
          GraphQLField("eventDesc", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("artistName", type: .scalar(String.self)),
          GraphQLField("eventImage", type: .object(EventImage.selections)),
          GraphQLField("heroImage", type: .object(HeroImage.selections)),
          GraphQLField("gatingsubscription", type: .object(Gatingsubscription.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(updatedAt: String, streamSlug: String? = nil, id: String, eventDisplayName: String? = nil, expectedAudienceCount: String? = nil, eventDatetime: String? = nil, eventDesc: String? = nil, createdAt: String, artistName: String? = nil, eventImage: EventImage? = nil, heroImage: HeroImage? = nil, gatingsubscription: Gatingsubscription? = nil) {
        self.init(unsafeResultMap: ["__typename": "EventRecord", "updatedAt": updatedAt, "streamSlug": streamSlug, "id": id, "eventDisplayName": eventDisplayName, "expectedAudienceCount": expectedAudienceCount, "eventDatetime": eventDatetime, "eventDesc": eventDesc, "createdAt": createdAt, "artistName": artistName, "eventImage": eventImage.flatMap { (value: EventImage) -> ResultMap in value.resultMap }, "heroImage": heroImage.flatMap { (value: HeroImage) -> ResultMap in value.resultMap }, "gatingsubscription": gatingsubscription.flatMap { (value: Gatingsubscription) -> ResultMap in value.resultMap }])
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

      public var heroImage: HeroImage? {
        get {
          return (resultMap["heroImage"] as? ResultMap).flatMap { HeroImage(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "heroImage")
        }
      }

      public var gatingsubscription: Gatingsubscription? {
        get {
          return (resultMap["gatingsubscription"] as? ResultMap).flatMap { Gatingsubscription(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "gatingsubscription")
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

      public struct HeroImage: GraphQLSelectionSet {
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

      public struct Gatingsubscription: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["GatingsubscriptionRecord"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("gated", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(gated: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "GatingsubscriptionRecord", "gated": gated])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var gated: String? {
          get {
            return resultMap["gated"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "gated")
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
    query fetchAllEventASC($product: String!) {
      allEvents(orderBy: eventDatetime_DESC, filter: {product: {eq: $product}}) {
        __typename
        updatedAt
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
        heroImage {
          __typename
          url
        }
        gatingsubscription {
          __typename
          gated
        }
      }
    }
    """

  public let operationName: String = "fetchAllEventASC"

  public var product: String

  public init(product: String) {
    self.product = product
  }

  public var variables: GraphQLMap? {
    return ["product": product]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("allEvents", arguments: ["orderBy": "eventDatetime_DESC", "filter": ["product": ["eq": GraphQLVariable("product")]]], type: .nonNull(.list(.nonNull(.object(AllEvent.selections))))),
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
          GraphQLField("streamSlug", type: .scalar(String.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("eventDisplayName", type: .scalar(String.self)),
          GraphQLField("expectedAudienceCount", type: .scalar(String.self)),
          GraphQLField("eventDatetime", type: .scalar(String.self)),
          GraphQLField("eventDesc", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("artistName", type: .scalar(String.self)),
          GraphQLField("eventImage", type: .object(EventImage.selections)),
          GraphQLField("heroImage", type: .object(HeroImage.selections)),
          GraphQLField("gatingsubscription", type: .object(Gatingsubscription.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(updatedAt: String, streamSlug: String? = nil, id: String, eventDisplayName: String? = nil, expectedAudienceCount: String? = nil, eventDatetime: String? = nil, eventDesc: String? = nil, createdAt: String, artistName: String? = nil, eventImage: EventImage? = nil, heroImage: HeroImage? = nil, gatingsubscription: Gatingsubscription? = nil) {
        self.init(unsafeResultMap: ["__typename": "EventRecord", "updatedAt": updatedAt, "streamSlug": streamSlug, "id": id, "eventDisplayName": eventDisplayName, "expectedAudienceCount": expectedAudienceCount, "eventDatetime": eventDatetime, "eventDesc": eventDesc, "createdAt": createdAt, "artistName": artistName, "eventImage": eventImage.flatMap { (value: EventImage) -> ResultMap in value.resultMap }, "heroImage": heroImage.flatMap { (value: HeroImage) -> ResultMap in value.resultMap }, "gatingsubscription": gatingsubscription.flatMap { (value: Gatingsubscription) -> ResultMap in value.resultMap }])
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

      public var heroImage: HeroImage? {
        get {
          return (resultMap["heroImage"] as? ResultMap).flatMap { HeroImage(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "heroImage")
        }
      }

      public var gatingsubscription: Gatingsubscription? {
        get {
          return (resultMap["gatingsubscription"] as? ResultMap).flatMap { Gatingsubscription(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "gatingsubscription")
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

      public struct HeroImage: GraphQLSelectionSet {
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

      public struct Gatingsubscription: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["GatingsubscriptionRecord"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("gated", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(gated: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "GatingsubscriptionRecord", "gated": gated])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var gated: String? {
          get {
            return resultMap["gated"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "gated")
          }
        }
      }
    }
  }
}

public final class FetchAllEventDescQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query fetchAllEventDESC($product: String!) {
      allEvents(orderBy: eventDatetime_DESC, filter: {product: {eq: $product}}) {
        __typename
        updatedAt
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
        heroImage {
          __typename
          url
        }
        gatingsubscription {
          __typename
          gated
        }
      }
    }
    """

  public let operationName: String = "fetchAllEventDESC"

  public var product: String

  public init(product: String) {
    self.product = product
  }

  public var variables: GraphQLMap? {
    return ["product": product]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("allEvents", arguments: ["orderBy": "eventDatetime_DESC", "filter": ["product": ["eq": GraphQLVariable("product")]]], type: .nonNull(.list(.nonNull(.object(AllEvent.selections))))),
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
          GraphQLField("streamSlug", type: .scalar(String.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("eventDisplayName", type: .scalar(String.self)),
          GraphQLField("expectedAudienceCount", type: .scalar(String.self)),
          GraphQLField("eventDatetime", type: .scalar(String.self)),
          GraphQLField("eventDesc", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("artistName", type: .scalar(String.self)),
          GraphQLField("eventImage", type: .object(EventImage.selections)),
          GraphQLField("heroImage", type: .object(HeroImage.selections)),
          GraphQLField("gatingsubscription", type: .object(Gatingsubscription.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(updatedAt: String, streamSlug: String? = nil, id: String, eventDisplayName: String? = nil, expectedAudienceCount: String? = nil, eventDatetime: String? = nil, eventDesc: String? = nil, createdAt: String, artistName: String? = nil, eventImage: EventImage? = nil, heroImage: HeroImage? = nil, gatingsubscription: Gatingsubscription? = nil) {
        self.init(unsafeResultMap: ["__typename": "EventRecord", "updatedAt": updatedAt, "streamSlug": streamSlug, "id": id, "eventDisplayName": eventDisplayName, "expectedAudienceCount": expectedAudienceCount, "eventDatetime": eventDatetime, "eventDesc": eventDesc, "createdAt": createdAt, "artistName": artistName, "eventImage": eventImage.flatMap { (value: EventImage) -> ResultMap in value.resultMap }, "heroImage": heroImage.flatMap { (value: HeroImage) -> ResultMap in value.resultMap }, "gatingsubscription": gatingsubscription.flatMap { (value: Gatingsubscription) -> ResultMap in value.resultMap }])
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

      public var heroImage: HeroImage? {
        get {
          return (resultMap["heroImage"] as? ResultMap).flatMap { HeroImage(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "heroImage")
        }
      }

      public var gatingsubscription: Gatingsubscription? {
        get {
          return (resultMap["gatingsubscription"] as? ResultMap).flatMap { Gatingsubscription(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "gatingsubscription")
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

      public struct HeroImage: GraphQLSelectionSet {
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

      public struct Gatingsubscription: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["GatingsubscriptionRecord"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("gated", type: .scalar(String.self)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(gated: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "GatingsubscriptionRecord", "gated": gated])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var gated: String? {
          get {
            return resultMap["gated"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "gated")
          }
        }
      }
    }
  }
}
