import Nest
import Inquiline

public typealias ParameterType = [String : String]
public typealias RouteHandler = (RequestType, ParameterType) -> ResponseConvertible

class Application {
  var routes: [Route] = []

  func call(request: RequestType) -> ResponseType {
		let routes = self.routes.filter { $0.path.matches(request.path) }
		let route = routes.filter { $0.method == request.method }.first

    if let route = route {
      let parameters = route.path.extract(fromString: request.path)
      return route.closure(request, parameters).asResponse()
    }

    if !routes.isEmpty {
      return Response(.MethodNotAllowed)
    }

    return Response(.NotFound)
  }

  func route(method: String, _ path: String, _ closure: RouteHandler) {
    let route = Route(method: method, path: path, closure: closure)
    routes.append(route)
  }

  func get(path: String, _ closure: RouteHandler) {
    route("GET", path, closure)
  }

  func post(path: String, _ closure: RouteHandler) {
    route("POST", path, closure)
  }

  func put(path: String, _ closure: RouteHandler) {
    route("PUT", path, closure)
  }

  func patch(path: String, _ closure: RouteHandler) {
    route("PATCH", path, closure)
  }

  func delete(path: String, _ closure: RouteHandler) {
    route("DELETE", path, closure)
  }

  func head(path: String, _ closure: RouteHandler) {
    route("HEAD", path, closure)
  }

  func options(path: String, _ closure: RouteHandler) {
    route("OPTIONS", path, closure)
  }
}
