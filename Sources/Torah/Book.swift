import SwiftExtensions
import VerseIndex

public struct Book {
  public let identifier: BookIdentifier
  public let verseIndices: VerseIndexCollection
}

extension Book: Equatable {}
extension Book: Hashable {}

extension Book: Codable {
  public init(from decoder: Decoder) throws {
    self = try BookFactory.book(
      for: decoder.singleValueContainer().decode(BookIdentifier.self))
  }
  
  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    try container.encode(identifier)
  }
}

public extension Book {
  var title: String {
    String(describing: identifier)
      .camelCaseToSpaceSeparated()
      .firstLetterUppercased()
  }
}
