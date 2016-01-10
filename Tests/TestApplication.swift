import Spectre
import Nest
import Inquiline
@testable import Frank


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
      let response = app.call(Request(method: "GET", path: "/"))

      try expect(response.statusLine) == "200 OK"
      try expect(response.body) == "Custom Route"
    }

    $0.it("returns my registered parameter route") {
      let response = app.call(Request(method: "GET", path: "/users/kyle"))

      try expect(response.statusLine) == "200 OK"
      try expect(response.body) == "Hello kyle"
    }

    $0.it("returns a 405 when there is a route for the path, but not for the method") {
      let response = app.call(Request(method: "DELETE", path: "/"))

      try expect(response.statusLine) == "405 METHOD NOT ALLOWED"
    }

    $0.it("returns a 404 for unmatched paths") {
      let response = app.call(Request(method: "GET", path: "/user/kyle"))

      try expect(response.statusLine) == "404 NOT FOUND"
    }
  }
}
