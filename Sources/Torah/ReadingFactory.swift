import VerseIndex

public enum ReadingFactory {}

public extension ReadingFactory {
  static func makeReading(for identifier: ParshahIdentifier) -> Reading {
    ParshahReading(identifier: identifier, aliyahs: aliyahs(for: identifier))
  }
  
  private static func book(for identifier: ParshahIdentifier) -> Book {
    switch identifier {
    case .bereishit: return BookFactory.makeBook(for: .genesis)
    }
  }
  
  private static func aliyah(for identifier: ParshahIdentifier, verseRange: ClosedRange<VerseIndex>) -> Aliyah {
    Aliyah(book: book(for: identifier), verseRange: verseRange)
  }
  
  private static func aliyahs(for identifier: ParshahIdentifier) -> [Aliyah] {
    switch identifier {
    case .bereishit: return [
      aliyah(for: identifier, verseRange: [1, 1]...[2, 3]),
      aliyah(for: identifier, verseRange: [2, 4]...[2, 19]),
      aliyah(for: identifier, verseRange: [2, 20]...[3, 21]),
      aliyah(for: identifier, verseRange: [3, 22]...[4, 18]),
      aliyah(for: identifier, verseRange: [4, 19]...[4, 22]),
      aliyah(for: identifier, verseRange: [4, 23]...[5, 24]),
      aliyah(for: identifier, verseRange: [5, 25]...[6, 8])
    ]
    }
  }
}
