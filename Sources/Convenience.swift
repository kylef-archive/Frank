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


public func route(method: String, _ path: String, _ closure: RequestType -> ResponseConvertible) {
  application.route(method, path, closure)
}


public func get(path: String, closure: RequestType -> ResponseConvertible) {
  application.get(path, closure)
}


func post(path: String, closure: RequestType -> ResponseConvertible) {
  application.post(path, closure)
}


func put(path: String, closure: RequestType -> ResponseConvertible) {
  application.put(path, closure)
}


func patch(path: String, closure: RequestType -> ResponseConvertible) {
  application.patch(path, closure)
}


func delete(path: String, closure: RequestType -> ResponseConvertible) {
  application.delete(path, closure)
}


func head(path: String, closure: RequestType -> ResponseConvertible) {
  application.head(path, closure)
}


func options(path: String, closure: RequestType -> ResponseConvertible) {
  application.options(path, closure)
}
