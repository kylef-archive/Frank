public protocol ParameterConvertible {
  init?(parser: ParameterParser)
}


extension String : ParameterConvertible {
  public init?(parser: ParameterParser) {
    if let parameter = parser.shift() {
      self.init(parameter)
    } else {
      return nil
    }
  }
}


extension Int : ParameterConvertible {
  public init?(parser: ParameterParser) {
    if let parameter = parser.shift() {
      self.init(parameter)
    } else {
      return nil
    }
  }
}


extension Double : ParameterConvertible {
  public init?(parser: ParameterParser) {
    if let parameter = parser.shift() {
      self.init(parameter)
    } else {
      return nil
    }
  }
}


extension Float : ParameterConvertible {
  public init?(parser: ParameterParser) {
    if let parameter = parser.shift() {
      self.init(parameter)
    } else {
      return nil
    }
  }
}
