import VerseIndex

public struct Book {
  public let identifier: BookIdentifier
  public let verseIndices: VerseIndexCollection
}

public extension Book {
  var title: String {
    let string = String(describing: identifier)
    return string.prefix(1).uppercased() + string.dropFirst()
  }
}
