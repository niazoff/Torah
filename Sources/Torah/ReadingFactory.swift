import VerseIndex

public enum ReadingFactory {
  private static let genesis = BookFactory.makeBook(for: .genesis)
  private static let exodus = BookFactory.makeBook(for: .exodus)
  private static let leviticus = BookFactory.makeBook(for: .leviticus)
  private static let numbers = BookFactory.makeBook(for: .numbers)
  private static let deuteronomy = BookFactory.makeBook(for: .deuteronomy)
}

public extension ReadingFactory {
  static func makeReading(for parshah: ParshahIdentifier) -> Reading {
    ParshahReading(identifier: parshah, aliyahs: aliyahs(for: parshah))
  }
  
  private static func book(for parshah: ParshahIdentifier) -> Book {
    switch parshah.bookIdentifier {
    case .genesis: return genesis
    case .exodus: return exodus
    case .leviticus: return leviticus
    case .numbers: return numbers
    case .deuteronomy: return deuteronomy
    }
  }
  
  private static func aliyah(for parshah: ParshahIdentifier, verseRange: ClosedRange<VerseIndex>) -> Aliyah {
    Aliyah(book: book(for: parshah), verseRange: verseRange)
  }
  
  private static func aliyahs(for parshah: ParshahIdentifier, verseRanges: [ClosedRange<VerseIndex>]) -> [Aliyah] {
    verseRanges.map { self.aliyah(for: parshah, verseRange: $0) }
  }
  
  private static func aliyahs(for parshah: ParshahIdentifier) -> [Aliyah] {
    switch parshah {
    case .bereshit: return aliyahs(for: parshah, verseRanges: [
      [1, 1]...[2, 3], [2, 4]...[2, 19], [2, 20]...[3, 21], [3, 22]...[4, 18],
      [4, 19]...[4, 22], [4, 23]...[5, 24], [5, 25]...[6, 8]
    ])
    case .noach: return aliyahs(for: parshah, verseRanges: [
      [6, 9]...[6, 22], [7, 1]...[7, 16], [7, 17]...[8, 14], [8, 15]...[9, 7],
      [9, 8]...[9, 17], [9, 18]...[10, 32], [11, 1]...[11, 32]
    ])
    case .lechLecha: return aliyahs(for: parshah, verseRanges: [
      [12, 1]...[12, 13], [12, 14]...[13, 4], [13, 5]...[13, 18], [14, 1]...[14, 20],
      [14, 21]...[15, 6], [15, 7]...[17, 6], [17, 7]...[17, 27]
    ])
    case .vayera: return aliyahs(for: parshah, verseRanges: [
      [18, 1]...[18, 14], [18, 15]...[18, 33], [19, 1]...[19, 20], [19, 21]...[21, 4],
      [21, 5]...[21, 21], [21, 22]...[21, 34], [22, 1]...[22, 24]
    ])
    case .chayeiSarah: return aliyahs(for: parshah, verseRanges: [
      [23, 1]...[23, 16], [23, 17]...[24, 9], [24, 10]...[24, 26], [24, 27]...[24, 52],
      [24, 53]...[24, 67], [25, 1]...[25, 11], [25, 12]...[25, 18]
    ])
    case .toldot: return aliyahs(for: parshah, verseRanges: [
      [25, 19]...[26, 5], [26, 6]...[26, 12], [26, 13]...[26, 22], [26, 23]...[26, 29],
      [26, 30]...[27, 27], [27, 28]...[28, 4], [28, 5]...[28, 9]
    ])
    case .vayetze: return aliyahs(for: parshah, verseRanges: [
      [28, 10]...[28, 22], [29, 1]...[29, 17], [29, 18]...[30, 13], [30, 14]...[30, 27],
      [30, 28]...[31, 16], [31, 17]...[31, 42], [31, 43]...[32, 3]
    ])
    case .vayishlach: return aliyahs(for: parshah, verseRanges: [
      [32, 4]...[32, 13], [32, 14]...[32, 30], [32, 31]...[33, 5], [33, 6]...[33, 20],
      [34, 1]...[35, 11], [35, 12]...[36, 19], [36, 20]...[36, 43]
    ])
    case .vayeshev: return aliyahs(for: parshah, verseRanges: [
      [37, 1]...[37, 11], [37, 12]...[37, 22], [37, 23]...[37, 36], [38, 1]...[38, 30],
      [39, 1]...[39, 6], [39, 7]...[39, 23], [40, 1]...[40, 23]
    ])
    case .miketz: return aliyahs(for: parshah, verseRanges: [
      [41, 1]...[41, 14], [41, 15]...[41, 38], [41, 39]...[41, 52], [41, 53]...[42, 18],
      [42, 19]...[43, 15], [43, 16]...[43, 29], [43, 30]...[44, 17]
    ])
    case .vayigash: return aliyahs(for: parshah, verseRanges: [
      [44, 18]...[44, 30], [44, 31]...[45, 7], [45, 8]...[45, 18], [45, 19]...[45, 27],
      [45, 28]...[46, 27], [46, 28]...[47, 10], [47, 11]...[47, 27]
    ])
    case .vayechi: return aliyahs(for: parshah, verseRanges: [
      [47, 28]...[48, 9], [48, 10]...[48, 16], [48, 17]...[48, 22], [49, 1]...[49, 18],
      [49, 19]...[49, 26], [49, 27]...[50, 20], [50, 21]...[50, 26]
    ])
    case .shemot: return aliyahs(for: parshah, verseRanges: [
      [1, 1]...[1, 17], [1, 18]...[2, 10], [2, 11]...[2, 25], [3, 1]...[3, 15],
      [3, 16]...[4, 17], [4, 18]...[4, 31], [5, 1]...[6, 1]
    ])
    case .vaera: return aliyahs(for: parshah, verseRanges: [
      [6, 2]...[6, 13], [6, 14]...[6, 28], [6, 29]...[7, 7], [7, 8]...[8, 6],
      [8, 7]...[8, 18], [8, 19]...[9, 16], [9, 17]...[9, 35]
    ])
    case .bo: return aliyahs(for: parshah, verseRanges: [
      [10, 1]...[10, 11], [10, 12]...[10, 23], [10, 24]...[11, 3], [11, 4]...[12, 20],
      [12, 21]...[12, 28], [12, 29]...[12, 51], [13, 1]...[13, 16]
    ])
    case .beshalach: return aliyahs(for: parshah, verseRanges: [
      [13, 17]...[14, 8], [14, 9]...[14, 14], [14, 15]...[14, 25], [14, 26]...[15, 26],
      [15, 27]...[16, 10], [16, 11]...[16, 36], [17, 1]...[17, 16]
    ])
    case .yitro: return aliyahs(for: parshah, verseRanges: [
      [18, 1]...[18, 12], [18, 13]...[18, 23], [18, 24]...[18, 27], [19, 1]...[19, 6],
      [19, 7]...[19, 19], [19, 20]...[20, 14], [20, 15]...[20, 23]
    ])
    case .mishpatim: return aliyahs(for: parshah, verseRanges: [
      [21, 1]...[21, 19], [12, 20]...[22, 3], [22, 4]...[22, 26], [22, 27]...[23, 5],
      [23, 6]...[23, 19], [23, 20]...[23, 25], [23, 26]...[24, 18]
    ])
    case .terumah: return aliyahs(for: parshah, verseRanges: [
      [25, 1]...[25, 16], [25, 17]...[25, 30], [25, 31]...[26, 14], [26, 15]...[26, 30],
      [26, 31]...[26, 37], [27, 1]...[27, 8], [27, 9]...[27, 19]
    ])
    case .tetzaveh: return aliyahs(for: parshah, verseRanges: [
      [27, 20]...[28, 12], [28, 13]...[28, 30], [28, 31]...[28, 43], [29, 1]...[29, 18],
      [29, 19]...[29, 37], [29, 38]...[29, 46], [30, 1]...[30, 10]
    ])
    case .kiTisa: return aliyahs(for: parshah, verseRanges: [
      [30, 11]...[31, 17], [31, 18]...[33, 11], [33, 12]...[33, 16], [33, 17]...[33, 23],
      [34, 1]...[34, 9], [34, 10]...[34, 26], [34, 27]...[34, 35]
    ])
    case .vayakhel: return aliyahs(for: parshah, verseRanges: [
      [35, 1]...[35, 20], [35, 21]...[35, 29], [35, 30]...[36, 7], [36, 8]...[36, 19],
      [36, 20]...[37, 16], [37, 17]...[37, 29], [38, 1]...[38, 20]
    ])
    case .pekudei: return aliyahs(for: parshah, verseRanges: [
      [38, 21]...[39, 1], [39, 2]...[39, 21], [39, 22]...[39, 32], [39, 33]...[39, 43],
      [40, 1]...[40, 16], [40, 17]...[40, 27], [40, 28]...[40, 38]
    ])
    case .vayakhelPekudei: return aliyahs(for: parshah, verseRanges: [
      [35, 1]...[35, 29], [35, 30]...[37, 16], [37, 17]...[37, 29], [38, 1]...[39, 1],
      [39, 2]...[39, 21], [39, 22]...[39, 43], [40, 1]...[40, 38]
    ])
    default: return []
    }
  }
}
