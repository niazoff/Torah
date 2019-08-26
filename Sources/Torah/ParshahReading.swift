public struct ParshahReading: Reading {
  public let identifier: ParshahIdentifier
  public let aliyahs: [Aliyah]
}

public extension ParshahReading {
  var title: String {
    let string = String(describing: identifier)
    return string.prefix(1).uppercased() + string.dropFirst()
  }
}
