import SwiftExtensions

public struct ParshahReading: Reading {
  public let identifier: ParshahIdentifier
  public let aliyahs: [Aliyah]
}

public extension ParshahReading {
  var title: String {
    String(describing: identifier)
      .camelCaseToSpaceSeparated()
      .firstLetterUppercased()
  }
}

extension ParshahReading: Equatable {
  public static func == (lhs: ParshahReading, rhs: ParshahReading) -> Bool {
    lhs.identifier == rhs.identifier
  }
}
