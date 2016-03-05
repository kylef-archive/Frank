import Spectre
import Nest
import Inquiline
@testable import Frank


extension ResponseType {
  mutating func content() -> String? {
    if let body = body {
      var bytes: [UInt8] = []
      var body = body
      while let nextBytes = body.next() { bytes += nextBytes }
      bytes.append(0)
      return String.fromCString(bytes.map { CChar($0) })
    }

    return nil
  }
}


func testApplication() {
  describe("Application") {
    let app = Application()

    app.get { _ in
      return "Custom Route"
    }

    app.get("users", *) { (request, username: String) in
      return "Hello \(username)"
    }

    $0.it("returns my registered root route") {
      var response = app.call(Request(method: "GET", path: "/"))

      try expect(response.statusLine) == "200 OK"
      try expect(response.content()) == "Custom Route"
    }

    $0.it("returns my registered parameter route") {
      var response = app.call(Request(method: "GET", path: "/users/kyle"))

      try expect(response.statusLine) == "200 OK"
      try expect(response.content()) == "Hello kyle"
    }

    $0.it("returns a 405 when there is a route for the path, but not for the method") {
      let response = app.call(Request(method: "DELETE", path: "/"))

      try expect(response.statusLine) == "405 Method Not Allowed"
    }

    $0.it("returns a 404 for unmatched paths") {
      let response = app.call(Request(method: "GET", path: "/user/kyle"))

      try expect(response.statusLine) == "404 Not Found"
    }
  }
}
