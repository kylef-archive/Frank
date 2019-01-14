import Nest
import Inquiline


func redirect(location: String, status: Status = .found) -> ResponseType {
  var response = Response(status)
  response["Location"] = location
  return response
}
