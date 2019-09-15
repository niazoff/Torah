import SwiftExtensions
import VerseIndex

public struct Book {
  public let identifier: BookIdentifier
  public let verseIndices: VerseIndexCollection
}

public extension Book {
  var title: String {
    String(describing: identifier)
      .camelCaseToSpaceSeparated()
      .firstLetterUppercased()
  }
}
