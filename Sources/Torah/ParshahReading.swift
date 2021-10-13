import SwiftExtensions

public struct ParshahReading: Reading {
  public let identifier: ParshahIdentifier
  public let aliyahs: [Aliyah]
}

public extension ParshahReading {
  var title: String { identifier.title }
}

extension ParshahReading: Equatable {
  public static func == (lhs: ParshahReading, rhs: ParshahReading) -> Bool {
    lhs.identifier == rhs.identifier
  }
}
