/// NOTE: This file is generated for type-safe path routing

import Nest


// The following line is a hack to make it possible to pass "*" as a Parameter
// This makes it possible to annotate the place in the path that is variable
public typealias Parameter = (Int, Int) -> Int


func validateParameter(parser: ParameterParser, _ value: String) -> String? {
  if let parameter = parser.shift() where parameter == value {
    return parameter
  }

  return nil
}


extension Application {

  /// GET /
  func get(closure: RequestType -> ResponseConvertible) {
    route("GET") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// GET
  func get<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// GET
  func get(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// GET
  func get(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// GET
  func get(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// GET
  func get(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// GET
  func get<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// GET
  func get(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("GET") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


  /// HEAD /
  func head(closure: RequestType -> ResponseConvertible) {
    route("HEAD") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// HEAD
  func head<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// HEAD
  func head(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("HEAD") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


  /// PUT /
  func put(closure: RequestType -> ResponseConvertible) {
    route("PUT") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// PUT
  func put<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PUT
  func put(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PUT
  func put(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// PUT
  func put(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// PUT
  func put(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PUT
  func put<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// PUT
  func put(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("PUT") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


  /// PATCH /
  func patch(closure: RequestType -> ResponseConvertible) {
    route("PATCH") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// PATCH
  func patch<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// PATCH
  func patch(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("PATCH") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


  /// POST /
  func post(closure: RequestType -> ResponseConvertible) {
    route("POST") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// POST
  func post<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// POST
  func post(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// POST
  func post(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// POST
  func post(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// POST
  func post(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// POST
  func post<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// POST
  func post(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("POST") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


  /// DELETE /
  func delete(closure: RequestType -> ResponseConvertible) {
    route("DELETE") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// DELETE
  func delete<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// DELETE
  func delete(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("DELETE") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


  /// OPTIONS /
  func options(closure: RequestType -> ResponseConvertible) {
    route("OPTIONS") { request in
      if request.path == "/" {
        return { closure(request) }
      }

      return nil
    }
  }


  /// OPTIONS
  func options<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p1, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        p1 = P1(parser: parser),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p1)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p2, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        p2 = P2(parser: parser),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p2)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p3, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        p3 = P3(parser: parser),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p3)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p4, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        p4 = P4(parser: parser),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request, p4)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        p5 = P5(parser: parser)
        where parser.isEmpty
      {
        return {
          closure(request, p5)
        }
      }

      return nil
    }
  }

  /// OPTIONS
  func options(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
    route("OPTIONS") { request in
      let parser = ParameterParser(path: request.path)

      if let
        _ = validateParameter(parser, p1),
        _ = validateParameter(parser, p2),
        _ = validateParameter(parser, p3),
        _ = validateParameter(parser, p4),
        _ = validateParameter(parser, p5)
        where parser.isEmpty
      {
        return {
          closure(request)
        }
      }

      return nil
    }
  }


}


/// GET Root
func get(closure: (RequestType) -> ResponseConvertible) {
  application.get(closure)
}


/// GET
func get<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  get(p1, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  get(p1, p2, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  get(p1, p2, p3, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  get(p1, p2, p3, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  get(p1, p2, closure)
}

/// GET
func get<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  get(p1, p2, p3, closure)
}

/// GET
func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  get(p1, p2, p3, closure)
}

/// GET
func get<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
  get(p1, closure)
}

/// GET
func get<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  get(p1, p2, closure)
}

/// GET
func get<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  get(p1, p2, p3, closure)
}

/// GET
func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  get(p1, p2, p3, closure)
}

/// GET
func get<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
  get(p1, p2, closure)
}

/// GET
func get<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  get(p1, p2, p3, closure)
}

/// GET
func get<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
  get(p1, p2, p3, closure)
}

/// GET
func get<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
  get(p1, p2, p3, p4, closure)
}

/// GET
func get<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// GET
func get(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
  get(p1, p2, p3, p4, p5, closure)
}

/// HEAD Root
func head(closure: (RequestType) -> ResponseConvertible) {
  application.head(closure)
}


/// HEAD
func head<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  head(p1, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  head(p1, p2, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  head(p1, p2, p3, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  head(p1, p2, p3, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  head(p1, p2, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  head(p1, p2, p3, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  head(p1, p2, p3, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
  head(p1, closure)
}

/// HEAD
func head<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  head(p1, p2, closure)
}

/// HEAD
func head<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  head(p1, p2, p3, closure)
}

/// HEAD
func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  head(p1, p2, p3, closure)
}

/// HEAD
func head<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
  head(p1, p2, closure)
}

/// HEAD
func head<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  head(p1, p2, p3, closure)
}

/// HEAD
func head<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
  head(p1, p2, p3, closure)
}

/// HEAD
func head<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
  head(p1, p2, p3, p4, closure)
}

/// HEAD
func head<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// HEAD
func head(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
  head(p1, p2, p3, p4, p5, closure)
}

/// PUT Root
func put(closure: (RequestType) -> ResponseConvertible) {
  application.put(closure)
}


/// PUT
func put<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  put(p1, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  put(p1, p2, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  put(p1, p2, p3, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  put(p1, p2, p3, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  put(p1, p2, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  put(p1, p2, p3, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  put(p1, p2, p3, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
  put(p1, closure)
}

/// PUT
func put<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  put(p1, p2, closure)
}

/// PUT
func put<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  put(p1, p2, p3, closure)
}

/// PUT
func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  put(p1, p2, p3, closure)
}

/// PUT
func put<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
  put(p1, p2, closure)
}

/// PUT
func put<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  put(p1, p2, p3, closure)
}

/// PUT
func put<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
  put(p1, p2, p3, closure)
}

/// PUT
func put<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
  put(p1, p2, p3, p4, closure)
}

/// PUT
func put<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PUT
func put(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
  put(p1, p2, p3, p4, p5, closure)
}

/// PATCH Root
func patch(closure: (RequestType) -> ResponseConvertible) {
  application.patch(closure)
}


/// PATCH
func patch<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  patch(p1, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  patch(p1, p2, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  patch(p1, p2, p3, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  patch(p1, p2, p3, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  patch(p1, p2, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  patch(p1, p2, p3, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  patch(p1, p2, p3, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
  patch(p1, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  patch(p1, p2, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  patch(p1, p2, p3, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  patch(p1, p2, p3, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
  patch(p1, p2, closure)
}

/// PATCH
func patch<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  patch(p1, p2, p3, closure)
}

/// PATCH
func patch<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
  patch(p1, p2, p3, closure)
}

/// PATCH
func patch<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, closure)
}

/// PATCH
func patch<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// PATCH
func patch(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
  patch(p1, p2, p3, p4, p5, closure)
}

/// POST Root
func post(closure: (RequestType) -> ResponseConvertible) {
  application.post(closure)
}


/// POST
func post<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  post(p1, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  post(p1, p2, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  post(p1, p2, p3, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  post(p1, p2, p3, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  post(p1, p2, closure)
}

/// POST
func post<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  post(p1, p2, p3, closure)
}

/// POST
func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  post(p1, p2, p3, closure)
}

/// POST
func post<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
  post(p1, closure)
}

/// POST
func post<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  post(p1, p2, closure)
}

/// POST
func post<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  post(p1, p2, p3, closure)
}

/// POST
func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  post(p1, p2, p3, closure)
}

/// POST
func post<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
  post(p1, p2, closure)
}

/// POST
func post<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  post(p1, p2, p3, closure)
}

/// POST
func post<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
  post(p1, p2, p3, closure)
}

/// POST
func post<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
  post(p1, p2, p3, p4, closure)
}

/// POST
func post<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// POST
func post(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
  post(p1, p2, p3, p4, p5, closure)
}

/// DELETE Root
func delete(closure: (RequestType) -> ResponseConvertible) {
  application.delete(closure)
}


/// DELETE
func delete<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  delete(p1, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  delete(p1, p2, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  delete(p1, p2, p3, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  delete(p1, p2, p3, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  delete(p1, p2, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  delete(p1, p2, p3, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  delete(p1, p2, p3, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
  delete(p1, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  delete(p1, p2, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  delete(p1, p2, p3, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  delete(p1, p2, p3, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
  delete(p1, p2, closure)
}

/// DELETE
func delete<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  delete(p1, p2, p3, closure)
}

/// DELETE
func delete<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
  delete(p1, p2, p3, closure)
}

/// DELETE
func delete<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, closure)
}

/// DELETE
func delete<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// DELETE
func delete(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
  delete(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS Root
func options(closure: (RequestType) -> ResponseConvertible) {
  application.options(closure)
}


/// OPTIONS
func options<P1 : ParameterConvertible>(p1: Parameter,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  options(p1, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  options(p1, p2, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  options(p1, p2, p3, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P4, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P3, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P3, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2, P3) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  options(p1, p2, p3, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P4, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P2, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P2, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P2 : ParameterConvertible>(p1: Parameter, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P2) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible>(p1: Parameter, _ p2: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  options(p1, p2, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  options(p1, p2, p3, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P4, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P3, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P3, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P3 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P1, P3) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  options(p1, p2, p3, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P1, P4, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P4 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P1, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible, P5 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P1, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P1 : ParameterConvertible>(p1: Parameter, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P1) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options(p1: String,  _ closure: (RequestType) -> ResponseConvertible) {
  options(p1, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible>(p1: String, _ p2: Parameter,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  options(p1, p2, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  options(p1, p2, p3, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P4, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P3, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible, P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P3, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible, P3 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P2, P3) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  options(p1, p2, p3, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P2, P4, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P2, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P2, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P2 : ParameterConvertible>(p1: String, _ p2: Parameter, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType, P2) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options(p1: String, _ p2: String,  _ closure: (RequestType) -> ResponseConvertible) {
  options(p1, p2, closure)
}

/// OPTIONS
func options<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  options(p1, p2, p3, closure)
}

/// OPTIONS
func options<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P3 : ParameterConvertible, P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P3, P4, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P3 : ParameterConvertible, P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P3, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P3 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P3, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P3 : ParameterConvertible>(p1: String, _ p2: String, _ p3: Parameter, _ p4: String, _ p5: String,  _ closure: (RequestType, P3) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options(p1: String, _ p2: String, _ p3: String,  _ closure: (RequestType) -> ResponseConvertible) {
  options(p1, p2, p3, closure)
}

/// OPTIONS
func options<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P4 : ParameterConvertible, P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: Parameter,  _ closure: (RequestType, P4, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options<P4 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: Parameter, _ p5: String,  _ closure: (RequestType, P4) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options(p1: String, _ p2: String, _ p3: String, _ p4: String,  _ closure: (RequestType) -> ResponseConvertible) {
  options(p1, p2, p3, p4, closure)
}

/// OPTIONS
func options<P5 : ParameterConvertible>(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: Parameter,  _ closure: (RequestType, P5) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

/// OPTIONS
func options(p1: String, _ p2: String, _ p3: String, _ p4: String, _ p5: String,  _ closure: (RequestType) -> ResponseConvertible) {
  options(p1, p2, p3, p4, p5, closure)
}

