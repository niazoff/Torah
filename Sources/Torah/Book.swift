import SwiftExtensions
import VerseIndex

public struct Book {
  public let identifier: BookIdentifier
  public let verseIndices: VerseIndexCollection
}

extension Book: Equatable {}
extension Book: Hashable {}
extension Book: Codable {}

public extension Book {
  var title: String {
    String(describing: identifier)
      .camelCaseToSpaceSeparated()
      .firstLetterUppercased()
  }
}
