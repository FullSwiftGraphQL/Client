//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct HumanFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition =
    """
    fragment HumanFragment on Human {
      __typename
      id
      name
      homePlanet
      height
      mass
      friends {
        __typename
        id
        name
      }
    }
    """

  public static let possibleTypes = ["Human"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("homePlanet", type: .scalar(String.self)),
    GraphQLField("height", type: .scalar(Double.self)),
    GraphQLField("mass", type: .scalar(Double.self)),
    GraphQLField("friends", type: .list(.object(Friend.selections))),
  ]

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, name: String, homePlanet: String? = nil, height: Double? = nil, mass: Double? = nil, friends: [Friend?]? = nil) {
    self.init(unsafeResultMap: ["__typename": "Human", "id": id, "name": name, "homePlanet": homePlanet, "height": height, "mass": mass, "friends": friends.flatMap { (value: [Friend?]) -> [ResultMap?] in value.map { (value: Friend?) -> ResultMap? in value.flatMap { (value: Friend) -> ResultMap in value.resultMap } } }])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The ID of the human
  public var id: GraphQLID {
    get {
      return resultMap["id"]! as! GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  /// What this human calls themselves
  public var name: String {
    get {
      return resultMap["name"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "name")
    }
  }

  /// The home planet of the human, or null if unknown
  public var homePlanet: String? {
    get {
      return resultMap["homePlanet"] as? String
    }
    set {
      resultMap.updateValue(newValue, forKey: "homePlanet")
    }
  }

  /// Height in the preferred unit, default is meters
  public var height: Double? {
    get {
      return resultMap["height"] as? Double
    }
    set {
      resultMap.updateValue(newValue, forKey: "height")
    }
  }

  /// Mass in kilograms, or null if unknown
  public var mass: Double? {
    get {
      return resultMap["mass"] as? Double
    }
    set {
      resultMap.updateValue(newValue, forKey: "mass")
    }
  }

  /// This human's friends, or an empty list if they have none
  public var friends: [Friend?]? {
    get {
      return (resultMap["friends"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Friend?] in value.map { (value: ResultMap?) -> Friend? in value.flatMap { (value: ResultMap) -> Friend in Friend(unsafeResultMap: value) } } }
    }
    set {
      resultMap.updateValue(newValue.flatMap { (value: [Friend?]) -> [ResultMap?] in value.map { (value: Friend?) -> ResultMap? in value.flatMap { (value: Friend) -> ResultMap in value.resultMap } } }, forKey: "friends")
    }
  }

  public struct Friend: GraphQLSelectionSet {
    public static let possibleTypes = ["Human", "Droid"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      GraphQLField("name", type: .nonNull(.scalar(String.self))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public static func makeHuman(id: GraphQLID, name: String) -> Friend {
      return Friend(unsafeResultMap: ["__typename": "Human", "id": id, "name": name])
    }

    public static func makeDroid(id: GraphQLID, name: String) -> Friend {
      return Friend(unsafeResultMap: ["__typename": "Droid", "id": id, "name": name])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// The ID of the character
    public var id: GraphQLID {
      get {
        return resultMap["id"]! as! GraphQLID
      }
      set {
        resultMap.updateValue(newValue, forKey: "id")
      }
    }

    /// The name of the character
    public var name: String {
      get {
        return resultMap["name"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "name")
      }
    }
  }
}
