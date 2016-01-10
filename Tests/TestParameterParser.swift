import Spectre
@testable import Frank


func testParameterParser() {
  describe("ParameterParser") {
    $0.describe("isEmpty") {
      $0.it("returns when the path is empty") {
        let parser = ParameterParser(path: "/")
        try expect(parser.isEmpty).to.beTrue()
      }

      $0.it("returns when the path is not empty") {
        let parser = ParameterParser(path: "/not")
        try expect(parser.isEmpty).to.beFalse()
      }
    }

    $0.describe("shifting a path component") {
      $0.it("returns the component") {
        let parser = ParameterParser(path: "/path")
        try expect(parser.shift()) == "path"
        try expect(parser.isEmpty).to.beTrue()
      }

      $0.it("returns nil when there isn't a component") {
        let parser = ParameterParser(path: "/")
        try expect(parser.shift()).to.beNil()
      }
    }
  }
}
