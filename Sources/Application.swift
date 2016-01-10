import Nest
import Inquiline


class Application {
  var routes: [Route] = []

  func call(request: RequestType) -> ResponseType {
    let routes = self.routes.flatMap { route -> (String, Route.Handler)? in
      if let match = route.match(request) {
        return (route.method, match)
      }

      return nil
    }

    let route = routes.filter { method, _ in method == request.method }.first

    if let (_, handler) = route {
      return handler().asResponse()
    }

    if !routes.isEmpty {
      return Response(.MethodNotAllowed)
    }

    return Response(.NotFound)
  }

  /// Register a route for the given method and path
  func route(method: String, _ path: String, _ closure: RequestType -> ResponseConvertible) {
    route(method) { request in
      if path == request.path {
        return { closure(request) }
      }

      return nil
    }
  }

  /// Register a route using a matcher closure
  func route(method: String, _ match: RequestType -> Route.Handler?) {
    let route = Route(method: method, match: match)
    routes.append(route)
  }
}
