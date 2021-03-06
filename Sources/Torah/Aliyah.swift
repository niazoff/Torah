import VerseIndex

public struct Aliyah {
  public let number: Int
  public let book: Book
  public let verseRange: ClosedRange<VerseIndex>
}

public extension Aliyah {
  var verseIndices: [VerseIndex] { Array(book.verseIndices[verseRange]) }
}
