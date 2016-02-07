
struct Route {
  let method: String
  let path: Path
  let closure: RouteHandler

  init(method: String, path: String, closure: RouteHandler) {
    self.method = method
    self.path = Path(string: path)
    self.closure = closure
  }
}

private extension String {
  var pathComponents: [String] {
    return characters.split("/").map(String.init)
  }
}

enum PathComponent {
  case Static(String)
  case Dynamic(String)

  var isStatic: Bool {
    switch self {
      case .Static: return true
      default: return false
    }
  }

  var isDynamic: Bool {
    switch self {
      case .Dynamic: return true
      default: return false
    }
  }

  var value: String {
    switch self {
      case .Static(let s): return s
      case .Dynamic(let k): return k
    }
  }
}

struct Path {
  let path: String
  let components: [PathComponent]
  let isStatic: Bool

  init(string: String) {
    self.path = string
    var isStatic = true
    self.components = string.pathComponents.map { str in
      guard str.characters.first == "{" && str.characters.last == "}" else { return PathComponent.Static(str) }

        isStatic = false
        let key = String(str.characters.filter { $0 != "{" && $0 != "}" })
        return PathComponent.Dynamic(key)
    }

    self.isStatic = isStatic
  }

  func extract(fromString string: String) -> [String : String] {
    guard !isStatic else { return [String : String]() }

    let stringComponents = string.pathComponents
    guard components.count == stringComponents.count else { return [String : String]() }

    var params = [String : String]()
    let zipped = zip(components, stringComponents)
    for (a, b) in zipped {
      guard a.isDynamic else { continue }
      let key = a.value
      params[key] = b
    }

    return params
  }

  func matches(string: String) -> Bool {
    guard !isStatic else { return self.path == string }

    let stringComponents = string.pathComponents
    guard components.count == stringComponents.count else { return false }

    let zipped = zip(components, stringComponents)
    for (a, b) in zipped {
      guard a.isStatic else { continue }
      let value = a.value
      guard value == b else { return false }
    }

    return true				
  }
}

