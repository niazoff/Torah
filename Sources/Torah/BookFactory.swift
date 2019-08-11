import VerseIndex

public enum BookFactory {
  public static func makeBook(for identifier: BookIdentifier) -> Book {
    Book(identifier: identifier, verseIndices: verseIndices(for: identifier))
  }
  
  private static func verseIndices(for identifier: BookIdentifier) -> VerseIndexCollection {
    switch identifier {
    case .genesis: return [
        1:  1...31, 2:  1...25, 3:  1...24,
        4:  1...26, 5:  1...32, 6:  1...22,
        7:  1...24, 8:  1...22, 9:  1...29,
        10: 1...32, 11: 1...32, 12: 1...20,
        13: 1...18, 14: 1...24, 15: 1...21,
        16: 1...16, 17: 1...27, 18: 1...33,
        19: 1...38, 20: 1...18, 21: 1...34,
        22: 1...24, 23: 1...20, 24: 1...67,
        25: 1...34, 26: 1...35, 27: 1...46,
        28: 1...22, 29: 1...35, 30: 1...43,
        31: 1...54, 32: 1...33, 33: 1...20,
        34: 1...31, 35: 1...29, 36: 1...43,
        37: 1...36, 38: 1...30, 39: 1...23,
        40: 1...23, 41: 1...57, 42: 1...38,
        43: 1...34, 44: 1...34, 45: 1...28,
        46: 1...34, 47: 1...31, 48: 1...22,
        49: 1...33, 50: 1...26
      ]
    default: return [:]
    }
  }
}
