import VerseIndex

public enum ReadingFactory {
  private static let genesis = BookFactory.book(for: .genesis)
  private static let exodus = BookFactory.book(for: .exodus)
  private static let leviticus = BookFactory.book(for: .leviticus)
  private static let numbers = BookFactory.book(for: .numbers)
  private static let deuteronomy = BookFactory.book(for: .deuteronomy)
}

public extension ReadingFactory {
  static func reading(for parshah: ParshahIdentifier) -> Reading {
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
  
  private static func aliyah(for parshah: ParshahIdentifier, verseRange: ClosedRange<VerseIndex>, number: Int) -> Aliyah {
    Aliyah(number: number, book: book(for: parshah), verseRange: verseRange)
  }
  
  private static func aliyahs(for parshah: ParshahIdentifier, verseRanges: [ClosedRange<VerseIndex>]) -> [Aliyah] {
    verseRanges.enumerated().map { self.aliyah(for: parshah, verseRange: $0.1, number: $0.0 + 1) }
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
    case .vayikra: return aliyahs(for: parshah, verseRanges: [
      [1, 1]...[1, 13], [1, 14]...[2, 6], [2, 7]...[2, 16], [3, 1]...[3, 17],
      [4, 1]...[4, 26], [4, 27]...[5, 10], [5, 11]...[5, 26]
    ])
    case .tzav: return aliyahs(for: parshah, verseRanges: [
      [6, 1]...[6, 11], [6, 12]...[7, 10], [7, 11]...[7, 38], [8, 1]...[8, 13],
      [8, 14]...[8, 21], [8, 22]...[8, 29], [8, 30]...[8, 36]
    ])
    case .shemini: return aliyahs(for: parshah, verseRanges: [
      [9, 1]...[9, 16], [9, 17]...[9, 23], [9, 24]...[10, 11], [10, 12]...[10, 15],
      [10, 16]...[10, 20], [11, 1]...[11, 32], [11, 33]...[11, 47]
    ])
    case .tazria: return aliyahs(for: parshah, verseRanges: [
      [12, 1]...[13, 5], [13, 6]...[13, 17], [13, 18]...[13, 23], [13, 24]...[13, 28],
      [13, 29]...[13, 39], [13, 40]...[13, 54], [13, 55]...[13, 59]
    ])
    case .metzora: return aliyahs(for: parshah, verseRanges: [
      [14, 1]...[14, 12], [14, 13]...[14, 20], [14, 21]...[14, 32], [14, 33]...[14, 53],
      [14, 54]...[15, 15], [15, 16]...[15, 28], [15, 29]...[15, 33]
    ])
    case .tazriaMetzora: return aliyahs(for: parshah, verseRanges: [
      [12, 1]...[13, 23], [13, 24]...[13, 39], [13, 40]...[13, 54], [13, 55]...[14, 20],
      [14, 21]...[14, 32], [14, 33]...[15, 15], [15, 16]...[15, 33]
    ])
    case .achareiMot: return aliyahs(for: parshah, verseRanges: [
      [16, 1]...[16, 17], [16, 18]...[16, 24], [16, 25]...[16, 34], [17, 1]...[17, 7],
      [17, 8]...[18, 5], [18, 6]...[18, 21], [18, 22]...[18, 30]
    ])
    case .kedoshim: return aliyahs(for: parshah, verseRanges: [
      [19, 1]...[19, 14], [19, 15]...[19, 22], [19, 23]...[19, 32], [19, 33]...[19, 37],
      [20, 1]...[20, 7], [20, 8]...[20, 22], [20, 23]...[20, 27]
    ])
    case .achareiMotKedoshim: return aliyahs(for: parshah, verseRanges: [
      [16, 1]...[16, 24], [16, 25]...[17, 7], [17, 8]...[18, 21], [18, 22]...[19, 14],
      [19, 15]...[19, 32], [19, 33]...[20, 7], [20, 8]...[20, 27]
    ])
    case .emor: return aliyahs(for: parshah, verseRanges: [
      [21, 1]...[21, 15], [21, 16]...[22, 16], [22, 17]...[22, 33], [23, 1]...[23, 22],
      [23, 23]...[23, 32], [23, 33]...[23, 44], [24, 1]...[24, 23]
    ])
    case .behar: return aliyahs(for: parshah, verseRanges: [
      [25, 1]...[25, 13], [25, 14]...[25, 18], [25, 19]...[25, 24], [25, 25]...[25, 28],
      [25, 29]...[25, 38], [25, 39]...[25, 46], [25, 47]...[26, 2]
    ])
    case .bechukotai: return aliyahs(for: parshah, verseRanges: [
      [26, 3]...[26, 5], [26, 6]...[26, 9], [26, 10]...[26, 46], [27, 1]...[27, 15],
      [27, 16]...[27, 21], [27, 22]...[27, 28], [27, 29]...[27, 34]
    ])
    case .beharBechukotai: return aliyahs(for: parshah, verseRanges: [
      [25, 1]...[25, 18], [25, 19]...[25, 28], [25, 29]...[25, 38], [25, 39]...[26, 9],
      [26, 10]...[26, 46], [27, 1]...[27, 15], [27, 16]...[27, 34]
    ])
    case .bamidbar: return aliyahs(for: parshah, verseRanges: [
      [1, 1]...[1, 19], [1, 20]...[1, 54], [2, 1]...[2, 34], [3, 1]...[3, 13],
      [3, 14]...[3, 39], [3, 40]...[3, 51], [4, 1]...[4, 20]
    ])
    case .naso: return aliyahs(for: parshah, verseRanges: [
      [4, 21]...[4, 37], [4, 38]...[4, 49], [5, 1]...[5, 10], [5, 11]...[6, 27],
      [7, 1]...[7, 41], [7, 42]...[7, 71], [7, 72]...[7, 89]
    ])
    case .behaalotecha: return aliyahs(for: parshah, verseRanges: [
      [8, 1]...[8, 14], [8, 15]...[8, 26], [9, 1]...[9, 14], [9, 15]...[10, 10],
      [10, 11]...[10, 34], [10, 35]...[11, 29], [11, 30]...[12, 16]
    ])
    case .shelachLecha: return aliyahs(for: parshah, verseRanges: [
      [13, 1]...[13, 20], [13, 21]...[14, 7], [14, 8]...[14, 25], [14, 26]...[15, 7],
      [15, 8]...[15, 16], [15, 17]...[15, 26], [15, 27]...[15, 41]
    ])
    case .korach: return aliyahs(for: parshah, verseRanges: [
      [16, 1]...[16, 13], [16, 14]...[16, 19], [16, 20]...[17, 8], [17, 9]...[17, 15],
      [17, 16]...[17, 24], [17, 25]...[18, 20], [18, 21]...[18, 32]
    ])
    case .chukat: return aliyahs(for: parshah, verseRanges: [
      [19, 1]...[19, 17], [19, 18]...[20, 6], [20, 7]...[20, 13], [20, 14]...[20, 21],
      [20, 22]...[21, 9], [21, 10]...[21, 20], [21, 21]...[22, 1]
    ])
    case .balak: return aliyahs(for: parshah, verseRanges: [
      [22, 2]...[22, 12], [22, 13]...[22, 20], [22, 21]...[22, 38], [22, 39]...[23, 12],
      [23, 13]...[23, 26], [23, 27]...[24, 13], [24, 14]...[25, 9]
    ])
    case .chukatBalak: return aliyahs(for: parshah, verseRanges: [
      [19, 1]...[20, 6], [20, 7]...[20, 21], [20, 22]...[21, 20], [21, 21]...[22, 12],
      [22, 13]...[22, 38], [22, 39]...[23, 26], [23, 27]...[25, 9]
    ])
    case .pinchas: return aliyahs(for: parshah, verseRanges: [
      [25, 10]...[26, 4], [26, 5]...[26, 51], [26, 52]...[27, 5], [27, 6]...[27, 23],
      [28, 1]...[28, 15], [28, 16]...[29, 11], [29, 12]...[30, 1]
    ])
    case .matot: return aliyahs(for: parshah, verseRanges: [
      [30, 2]...[30, 17], [31, 1]...[31, 12], [31, 13]...[31, 24], [31, 25]...[31, 41],
      [31, 42]...[31, 54], [32, 1]...[32, 19], [32, 20]...[32, 42]
    ])
    case .masei: return aliyahs(for: parshah, verseRanges: [
      [33, 1]...[33, 10], [33, 11]...[33, 49], [33, 50]...[34, 15], [34, 16]...[34, 29],
      [35, 1]...[35, 8], [35, 9]...[35, 34], [36, 1]...[36, 13]
    ])
    case .matotMasei: return aliyahs(for: parshah, verseRanges: [
      [30, 2]...[31, 12], [31, 13]...[31, 54], [32, 1]...[32, 19], [32, 20]...[33, 49],
      [33, 50]...[34, 15], [34, 16]...[35, 8], [35, 9]...[36, 13]
    ])
    case .devarim: return aliyahs(for: parshah, verseRanges: [
      [1, 1]...[1, 10], [1, 11]...[1, 21], [1, 22]...[1, 38], [1, 39]...[2, 1],
      [2, 2]...[2, 30], [2, 31]...[3, 14], [3, 15]...[3, 22]
    ])
    case .vaetchanan: return aliyahs(for: parshah, verseRanges: [
      [3, 23]...[4, 4], [4, 5]...[4, 40], [4, 41]...[4, 49], [5, 1]...[5, 18],
      [5, 19]...[6, 3], [6, 4]...[6, 25], [7, 1]...[7, 11]
    ])
    case .ekev: return aliyahs(for: parshah, verseRanges: [
      [7, 12]...[8, 10], [8, 11]...[9, 3], [9, 4]...[9, 29], [10, 1]...[10, 11],
      [10, 12]...[11, 9], [11, 10]...[11, 21], [11, 22]...[11, 25]
    ])
    case .reeh: return aliyahs(for: parshah, verseRanges: [
      [11, 26]...[12, 10], [12, 11]...[12, 28], [12, 29]...[13, 19], [14, 1]...[14, 21],
      [14, 22]...[14, 29], [15, 1]...[15, 18], [15, 19]...[16, 17]
    ])
    case .shoftim: return aliyahs(for: parshah, verseRanges: [
      [16, 18]...[17, 13], [17, 14]...[17, 20], [18, 1]...[18, 5], [18, 6]...[18, 13],
      [18, 14]...[19, 13], [19, 14]...[20, 9], [20, 10]...[21, 9]
    ])
    case .kiTetze: return aliyahs(for: parshah, verseRanges: [
      [21, 10]...[21, 21], [21, 22]...[22, 7], [22, 8]...[23, 7], [23, 8]...[23, 24],
      [23, 25]...[24, 4], [24, 5]...[24, 13], [24, 14]...[25, 19]
    ])
    case .kiTavo: return aliyahs(for: parshah, verseRanges: [
      [26, 1]...[26, 11], [26, 12]...[26, 15], [26, 16]...[26, 19], [27, 1]...[27, 10],
      [27, 11]...[28, 6], [28, 7]...[28, 69], [29, 1]...[29, 8]
    ])
    case .nitzavim: return aliyahs(for: parshah, verseRanges: [
      [29, 9]...[29, 11], [29, 12]...[29, 14], [29, 15]...[29, 28], [30, 1]...[30, 6],
      [30, 7]...[30, 10], [30, 11]...[30, 14], [30, 15]...[30, 20]
    ])
    case .vayelech: return aliyahs(for: parshah, verseRanges: [
      [31, 1]...[31, 3], [31, 4]...[31, 6], [31, 7]...[31, 9], [31, 10]...[31, 13],
      [31, 14]...[31, 19], [31, 20]...[31, 24], [31, 25]...[31, 30]
    ])
    case .nitzavimVayelech: return aliyahs(for: parshah, verseRanges: [
      [29, 9]...[29, 28], [30, 1]...[30, 6], [30, 7]...[30, 14], [30, 15]...[31, 6],
      [31, 7]...[31, 13], [31, 14]...[31, 19], [31, 20]...[31, 30]
    ])
    case .haazinu: return aliyahs(for: parshah, verseRanges: [
      [32, 1]...[32, 6], [32, 7]...[32, 12], [32, 13]...[32, 18], [32, 19]...[32, 28],
      [32, 29]...[32, 39], [32, 40]...[32, 43], [32, 44]...[32, 52]
    ])
    case .vezotHaberachah: return aliyahs(for: parshah, verseRanges: [
      [33, 1]...[33, 7], [33, 8]...[33, 12], [33, 13]...[33, 17], [33, 18]...[33, 21],
      [33, 22]...[33, 26], [33, 27]...[33, 29], [34, 1]...[34, 12]
    ])
    }
  }
}
