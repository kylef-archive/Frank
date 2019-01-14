/// NOTE: This file is generated for type-safe path routing

import Nest


// The following line is a hack to make it possible to pass "*" as a Parameter
// This makes it possible to annotate the place in the path that is variable
public typealias Parameter = (Int, Int) -> Int


func validateParameter(_ parser: ParameterParser, _ value: String) -> String? {
  if let parameter = parser.shift() , parameter == value {
    return parameter
  }

  return nil
}


extension Application {

  /// GET /
  func get(_ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("GET") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// GET
  func get<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// GET
  func get(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


  /// HEAD /
  func head(_ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("HEAD") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// HEAD
  func head<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


  /// PUT /
  func put(_ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("PUT") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// PUT
  func put<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PUT
  func put(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


  /// PATCH /
  func patch(_ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("PATCH") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// PATCH
  func patch<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


  /// POST /
  func post(_ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("POST") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// POST
  func post<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// POST
  func post(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


  /// DELETE /
  func delete(_ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("DELETE") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// DELETE
  func delete<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


  /// OPTIONS /
  func options(_ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("OPTIONS") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// OPTIONS
  func options<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let p1 = P1(parser: parser),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let p2 = P2(parser: parser),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let p3 = P3(parser: parser),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let p4 = P4(parser: parser),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let p5 = P5(parser: parser)
        , parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if
        let _ = validateParameter(parser, p1),
        let _ = validateParameter(parser, p2),
        let _ = validateParameter(parser, p3),
        let _ = validateParameter(parser, p4),
        let _ = validateParameter(parser, p5)
        , parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


}


/// GET /
public func get(_ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.get(closure)
}


/// GET
public func get<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.get(p1, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.get(p1, p2, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.get(p1, p2, p3, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.get(p1, p2, p3, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.get(p1, p2, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.get(p1, p2, p3, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.get(p1, p2, p3, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.get(p1, closure)
}

/// GET
public func get<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.get(p1, p2, closure)
}

/// GET
public func get<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.get(p1, p2, p3, closure)
}

/// GET
public func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.get(p1, p2, p3, closure)
}

/// GET
public func get<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.get(p1, p2, closure)
}

/// GET
public func get<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.get(p1, p2, p3, closure)
}

/// GET
public func get<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.get(p1, p2, p3, closure)
}

/// GET
public func get<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, closure)
}

/// GET
public func get<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// GET
public func get(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.get(p1, p2, p3, p4, p5, closure)
}

/// HEAD /
public func head(_ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.head(closure)
}


/// HEAD
public func head<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.head(p1, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.head(p1, p2, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.head(p1, p2, p3, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.head(p1, p2, p3, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.head(p1, p2, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.head(p1, p2, p3, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.head(p1, p2, p3, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.head(p1, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.head(p1, p2, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.head(p1, p2, p3, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.head(p1, p2, p3, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.head(p1, p2, closure)
}

/// HEAD
public func head<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.head(p1, p2, p3, closure)
}

/// HEAD
public func head<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.head(p1, p2, p3, closure)
}

/// HEAD
public func head<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, closure)
}

/// HEAD
public func head<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
public func head(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.head(p1, p2, p3, p4, p5, closure)
}

/// PUT /
public func put(_ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.put(closure)
}


/// PUT
public func put<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.put(p1, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.put(p1, p2, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.put(p1, p2, p3, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.put(p1, p2, p3, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.put(p1, p2, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.put(p1, p2, p3, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.put(p1, p2, p3, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.put(p1, closure)
}

/// PUT
public func put<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.put(p1, p2, closure)
}

/// PUT
public func put<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.put(p1, p2, p3, closure)
}

/// PUT
public func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.put(p1, p2, p3, closure)
}

/// PUT
public func put<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.put(p1, p2, closure)
}

/// PUT
public func put<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.put(p1, p2, p3, closure)
}

/// PUT
public func put<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.put(p1, p2, p3, closure)
}

/// PUT
public func put<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, closure)
}

/// PUT
public func put<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PUT
public func put(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.put(p1, p2, p3, p4, p5, closure)
}

/// PATCH /
public func patch(_ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.patch(closure)
}


/// PATCH
public func patch<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.patch(p1, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.patch(p1, p2, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.patch(p1, p2, p3, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.patch(p1, p2, p3, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.patch(p1, p2, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.patch(p1, p2, p3, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.patch(p1, p2, p3, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.patch(p1, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.patch(p1, p2, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.patch(p1, p2, p3, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.patch(p1, p2, p3, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.patch(p1, p2, closure)
}

/// PATCH
public func patch<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.patch(p1, p2, p3, closure)
}

/// PATCH
public func patch<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.patch(p1, p2, p3, closure)
}

/// PATCH
public func patch<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, closure)
}

/// PATCH
public func patch<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
public func patch(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.patch(p1, p2, p3, p4, p5, closure)
}

/// POST /
public func post(_ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.post(closure)
}


/// POST
public func post<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.post(p1, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.post(p1, p2, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.post(p1, p2, p3, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.post(p1, p2, p3, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.post(p1, p2, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.post(p1, p2, p3, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.post(p1, p2, p3, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.post(p1, closure)
}

/// POST
public func post<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.post(p1, p2, closure)
}

/// POST
public func post<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.post(p1, p2, p3, closure)
}

/// POST
public func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.post(p1, p2, p3, closure)
}

/// POST
public func post<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.post(p1, p2, closure)
}

/// POST
public func post<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.post(p1, p2, p3, closure)
}

/// POST
public func post<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.post(p1, p2, p3, closure)
}

/// POST
public func post<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, closure)
}

/// POST
public func post<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// POST
public func post(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.post(p1, p2, p3, p4, p5, closure)
}

/// DELETE /
public func delete(_ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.delete(closure)
}


/// DELETE
public func delete<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.delete(p1, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.delete(p1, p2, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.delete(p1, p2, p3, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.delete(p1, p2, p3, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.delete(p1, p2, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.delete(p1, p2, p3, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.delete(p1, p2, p3, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.delete(p1, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.delete(p1, p2, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.delete(p1, p2, p3, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.delete(p1, p2, p3, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.delete(p1, p2, closure)
}

/// DELETE
public func delete<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.delete(p1, p2, p3, closure)
}

/// DELETE
public func delete<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.delete(p1, p2, p3, closure)
}

/// DELETE
public func delete<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, closure)
}

/// DELETE
public func delete<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
public func delete(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.delete(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS /
public func options(_ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.options(closure)
}


/// OPTIONS
public func options<P1 : ParameterConvertible>(_ p1: Parameter,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.options(p1, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.options(p1, p2, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.options(p1, p2, p3, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P3) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.options(p1, p2, p3, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P2, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P2, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(_ p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P2) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.options(p1, p2, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.options(p1, p2, p3, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P3, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P3, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1, P3) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.options(p1, p2, p3, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P4, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P1, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P1, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P1 : ParameterConvertible>(_ p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P1) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options(_ p1: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.options(p1, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.options(p1, p2, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.options(p1, p2, p3, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P3, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P3, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible, P3 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2, P3) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.options(p1, p2, p3, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P4, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P2, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P2, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P2 : ParameterConvertible>(_ p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P2) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options(_ p1: String, _ p2: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.options(p1, p2, closure)
}

/// OPTIONS
public func options<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.options(p1, p2, p3, closure)
}

/// OPTIONS
public func options<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P4, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P3 : ParameterConvertible, P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P3, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P3 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P3, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P3 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType, P3) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options(_ p1: String, _ p2: String, _ p3: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.options(p1, p2, p3, closure)
}

/// OPTIONS
public func options<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P4 : ParameterConvertible, P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: @escaping (RequestType, P4, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options<P4 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: @escaping (RequestType, P4) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options(_ p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, closure)
}

/// OPTIONS
public func options<P5 : ParameterConvertible>(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: @escaping (RequestType, P5) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
public func options(_ p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: @escaping (RequestType) -> ResponseConvertible) {
  application.options(p1, p2, p3, p4, p5, closure)
}

