import Nest
import Inquiline



struct Route {
  let method: String
  let path: String
  let closure: RequestType -> ResponseConvertible

  init(method: String, path: String, closure: RequestType -> ResponseConvertible) {
    self.method = method
    self.path = path
    self.closure = closure
  }
}


class Application {
  var routes: [Route] = []

  func call(request: RequestType) -> ResponseType {
    let routes = self.routes.filter { $0.path == request.path }
    let route = routes.filter { $0.method == request.method }.first

    if let route = route {
      return route.closure(request).asResponse()
    }

    if !routes.isEmpty {
      return Response(.MethodNotAllowed)
    }

    return Response(.NotFound)
  }

  func route(method: String, _ path: String, _ closure: RequestType -> ResponseConvertible) {
    let route = Route(method: method, path: path, closure: closure)
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
