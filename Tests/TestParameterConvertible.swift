import Spectre
@testable import Frank


func testParameterConvertible() {
  describe("String is ParameterConvertible") {
    $0.it("matches with a strings") {
      let parser = ParameterParser(path: "/hello")
      try expect(String(parser: parser)) == "hello"
    }
  }

  describe("Int is ParameterConvertible") {
    $0.it("matches with an integer") {
      let parser = ParameterParser(path: "/123")
      try expect(Int(parser: parser)) == 123
    }

    $0.it("doesn't match non-integers") {
      let parser = ParameterParser(path: "/one")
      try expect(Int(parser: parser)).to.beNil()
    }
  }

  describe("Double is ParameterConvertible") {
    $0.it("matches with an integer") {
      let parser = ParameterParser(path: "/123")
      try expect(Double(parser: parser)) == 123
    }

    $0.it("matches with a decimal number") {
      let parser = ParameterParser(path: "/1.23")
      try expect(Double(parser: parser)) == 1.23
    }

    $0.it("doesn't match non-numbers") {
      let parser = ParameterParser(path: "/one")
      try expect(Double(parser: parser)).to.beNil()
    }
  }

  describe("Float is ParameterConvertible") {
    $0.it("matches with an integer") {
      let parser = ParameterParser(path: "/123")
      try expect(Float(parser: parser)) == 123
    }

    $0.it("matches with a decimal number") {
      let parser = ParameterParser(path: "/1.23")
      try expect(Float(parser: parser)) == 1.23
    }

    $0.it("doesn't match non-numbers") {
      let parser = ParameterParser(path: "/one")
      try expect(Float(parser: parser)).to.beNil()
    }
  }
}
