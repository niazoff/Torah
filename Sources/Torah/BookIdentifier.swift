public enum BookIdentifier: Int {
  case genesis, exodus, leviticus, numbers, deuteronomy
}

extension BookIdentifier: Equatable {}
extension BookIdentifier: Hashable {}
extension BookIdentifier: Codable {}
