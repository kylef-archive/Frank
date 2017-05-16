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


func serve() -> Never {
  Curassow.serve(application.call)
}


public func call(_ request: RequestType) -> ResponseType {
  return application.call(request)
}
