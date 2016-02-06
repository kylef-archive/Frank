func zip<A: SequenceType, B: SequenceType>(a: A, b: B) -> ZipSequence<A, B> {
  return ZipSequence(a, b)
}

struct ZipSequence<A: SequenceType, B: SequenceType>: SequenceType {
  private var a: A
  private var b: B

  init (_ a: A, _ b: B) {
    self.a = a
    self.b = b
  }

  func generate() -> ZipGenerator<A.Generator, B.Generator> {
    return ZipGenerator(a.generate(), b.generate())
  }
}

struct ZipGenerator<A: GeneratorType, B: GeneratorType>: GeneratorType {
  private var a: A
  private var b: B

  init(_ a: A, _ b: B) {
    self.a = a
    self.b = b
  }

  mutating func next() -> (A.Element, B.Element)? {
    switch (a.next(), b.next()) {
    case let (.Some(aValue), .Some(bValue)):
      return (aValue, bValue)
    default:
      return nil
    }
  }
}
