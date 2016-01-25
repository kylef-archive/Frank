import Nest
import Inquiline



public protocol ResponseConvertible {
  func asResponse() -> ResponseType
}


extension String : ResponseConvertible {
  public func asResponse() -> ResponseType {
    return Response(.Ok, body: self)
  }
}
