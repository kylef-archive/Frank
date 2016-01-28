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

  func route(method: String, _ path: String, _ closure: RequestType -> ResponseConvertible) {
    let match: (RequestType -> (Void -> ResponseConvertible)?) = { request in
      if request.path == path {
        return {
          closure(request)
        }
      }

      return nil
    }

    let route = Route(method: method, match: match)
    routes.append(route)
  }

  func get(path: String, _ closure: RequestType -> ResponseConvertible) {
    route("GET", path, closure)
  }

  func post(path: String, _ closure: RequestType -> ResponseConvertible) {
    route("POST", path, closure)
  }

  func put(path: String, _ closure: RequestType -> ResponseConvertible) {
    route("PUT", path, closure)
  }

  func patch(path: String, _ closure: RequestType -> ResponseConvertible) {
    route("PATCH", path, closure)
  }

  func delete(path: String, _ closure: RequestType -> ResponseConvertible) {
    route("DELETE", path, closure)
  }

  func head(path: String, _ closure: RequestType -> ResponseConvertible) {
    route("HEAD", path, closure)
  }

  func options(path: String, _ closure: RequestType -> ResponseConvertible) {
    route("OPTIONS", path, closure)
  }
}
