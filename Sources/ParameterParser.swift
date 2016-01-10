public class ParameterParser {
  var components: [String]

  init(path: String) {
    components = path.characters.split("/").map(String.init)
  }

  public var isEmpty: Bool {
    return components.isEmpty
  }

  /// Returns and removes the next component from the path
  public func shift() -> String? {
    if isEmpty {
      return nil
    }

    return components.removeFirst()
  }
}
