import Nest


struct Route {
  /// The handler to perform the request
  typealias Handler = () -> ResponseConvertible

  /// The HTTP method to match the route
  let method: String

  /// The match handler
  let match: (RequestType) -> Handler?

  init(method: String, match: @escaping (RequestType) -> Handler?) {
    self.method = method
    self.match = match
  }
}
