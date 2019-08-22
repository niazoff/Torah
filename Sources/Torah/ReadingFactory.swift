import VerseIndex

public enum ReadingFactory {}

public extension ReadingFactory {
  private static let genesis = BookFactory.makeBook(for: .genesis)
  private static let exodus = BookFactory.makeBook(for: .exodus)
  private static let leviticus = BookFactory.makeBook(for: .leviticus)
  private static let numbers = BookFactory.makeBook(for: .numbers)
  private static let deuteronomy = BookFactory.makeBook(for: .deuteronomy)
  
  static func makeReading(for identifier: ParshahIdentifier) -> Reading {
    ParshahReading(identifier: identifier, aliyahs: aliyahs(for: identifier))
  }
  
  private static func book(for identifier: ParshahIdentifier) -> Book {
    switch identifier {
    case .bereshit, .noach, .lechLecha, .vayera, .chayeiSarah,
         .toldot, .vayetze, .vayishlach, .vayeshev, .miketz,
         .vayigash, .vayechi:
      return genesis
    case .shemot, .vaera, .bo, .beshalach, .yitro,
         .mishpatim, .terumah, .tetzaveh, .kiTisa, .vayakhel, .pekudei:
      return exodus
    case .vayikra, .tzav, .shemini, .tazria, .metzora,
         .achareiMot, .kedoshim, .emor, .behar, .bechukotai:
      return leviticus
    case .bamidbar, .naso, .behaalotecha, .shelachLecha, .korach,
         .chukat, .balak, .pinchas, .matot, .masei:
      return numbers
    case .devarim, .vaetchanan, .ekev, .reeh, .shoftim,
         .kiTetze, .kiTavo, .nitzavim, .vayelech, .haazinu, .vezotHaberachah:
      return deuteronomy
    }
  }
  
  private static func aliyah(for identifier: ParshahIdentifier, verseRange: ClosedRange<VerseIndex>) -> Aliyah {
    Aliyah(book: book(for: identifier), verseRange: verseRange)
  }
  
  private static func aliyahs(for identifier: ParshahIdentifier, verseRanges: [ClosedRange<VerseIndex>]) -> [Aliyah] {
    verseRanges.map { self.aliyah(for: identifier, verseRange: $0) }
  }
  
  private static func aliyahs(for identifier: ParshahIdentifier) -> [Aliyah] {
    switch identifier {
    case .bereshit: return aliyahs(for: identifier, verseRanges: [
      [1, 1]...[2, 3], [2, 4]...[2, 19], [2, 20]...[3, 21], [3, 22]...[4, 18],
      [4, 19]...[4, 22], [4, 23]...[5, 24], [5, 25]...[6, 8]
    ])
    case .noach: return aliyahs(for: identifier, verseRanges: [
      [6, 9]...[6, 22], [7, 1]...[7, 16], [7, 17]...[8, 14], [8, 15]...[9, 7],
      [9, 8]...[9, 17], [9, 18]...[10, 32], [11, 1]...[11, 32]
    ])
    case .lechLecha: return aliyahs(for: identifier, verseRanges: [
      [12, 1]...[12, 13], [12, 14]...[13, 4], [13, 5]...[13, 18], [14, 1]...[14, 20],
      [14, 21]...[15, 6], [15, 7]...[17, 6], [17, 7]...[17, 27]
    ])
    case .vayera: return aliyahs(for: identifier, verseRanges: [
      [18, 1]...[18, 14], [18, 15]...[18, 33], [19, 1]...[19, 20], [19, 21]...[21, 4],
      [21, 5]...[21, 21], [21, 22]...[21, 34], [22, 1]...[22, 24]
    ])
    case .chayeiSarah: return aliyahs(for: identifier, verseRanges: [
      [23, 1]...[23, 16], [23, 17]...[24, 9], [24, 10]...[24, 26], [24, 27]...[24, 52],
      [24, 53]...[24, 67], [25, 1]...[25, 11], [25, 12]...[25, 18]
    ])
    case .toldot: return aliyahs(for: identifier, verseRanges: [
      [25, 19]...[26, 5], [26, 6]...[26, 12], [26, 13]...[26, 22], [26, 23]...[26, 29],
      [26, 30]...[27, 27], [27, 28]...[28, 4], [28, 5]...[28, 9]
    ])
    case .vayetze: return aliyahs(for: identifier, verseRanges: [
      [28, 10]...[28, 22], [29, 1]...[29, 17], [29, 18]...[30, 13], [30, 14]...[30, 27],
      [30, 28]...[31, 16], [31, 17]...[31, 42], [31, 43]...[32, 3]
    ])
    case .vayishlach: return aliyahs(for: identifier, verseRanges: [
      [32, 4]...[32, 13], [32, 14]...[32, 30], [32, 31]...[33, 5], [33, 6]...[33, 20],
      [34, 1]...[35, 11], [35, 12]...[36, 19], [36, 20]...[36, 43]
    ])
    case .vayeshev: return aliyahs(for: identifier, verseRanges: [
      [37, 1]...[37, 11], [37, 12]...[37, 22], [37, 23]...[37, 36], [38, 1]...[38, 30],
      [39, 1]...[39, 6], [39, 7]...[39, 23], [40, 1]...[40, 23]
    ])
    case .miketz: return aliyahs(for: identifier, verseRanges: [
      [41, 1]...[41, 14], [41, 15]...[41, 38], [41, 39]...[41, 52], [41, 53]...[42, 18],
      [42, 19]...[43, 15], [43, 16]...[43, 29], [43, 30]...[44, 17]
    ])
    case .vayigash: return aliyahs(for: identifier, verseRanges: [
      [44, 18]...[44, 30], [44, 31]...[45, 7], [45, 8]...[45, 18], [45, 19]...[45, 27],
      [45, 28]...[46, 27], [46, 28]...[47, 10], [47, 11]...[47, 27]
    ])
    case .vayechi: return aliyahs(for: identifier, verseRanges: [
      [47, 28]...[48, 9], [48, 10]...[48, 16], [48, 17]...[48, 22], [49, 1]...[49, 18],
      [49, 19]...[49, 26], [49, 27]...[50, 20], [50, 21]...[50, 26]
    ])
    }
  }
}
