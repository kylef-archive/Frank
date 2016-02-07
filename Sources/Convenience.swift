#if os(Linux)
import Glibc
#else
import Darwin
#endif

import Nest
import Curassow


let application: Application = {
  atexit { serve() }
  return Application()
}()


@noreturn func serve() {
  Curassow.serve(application.call)
}


public func call(request: RequestType) -> ResponseType {
  return application.call(request)
}


public func route(method: String, _ path: String, _ closure: RouteHandler) {
  application.route(method, path, closure)
}


public func get(path: String, closure: RouteHandler) {
  application.get(path, closure)
}


func post(path: String, closure: RouteHandler) {
  application.post(path, closure)
}


func put(path: String, closure: RouteHandler) {
  application.put(path, closure)
}


func patch(path: String, closure: RouteHandler) {
  application.patch(path, closure)
}


func delete(path: String, closure: RouteHandler) {
  application.delete(path, closure)
}


func head(path: String, closure: RouteHandler) {
  application.head(path, closure)
}


func options(path: String, closure: RouteHandler) {
  application.options(path, closure)
}
