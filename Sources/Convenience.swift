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
