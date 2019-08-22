public enum ParshahIdentifier {
  // MARK: - Genesis
  case bereshit
  case noach
  case lechLecha
  case vayera
  case chayeiSarah
  case toldot
  case vayetze
  case vayishlach
  case vayeshev
  case miketz
  case vayigash
  case vayechi
  
  // MARK: - Exodus
  case shemot
  case vaera
  case bo
  case beshalach
  case yitro
  case mishpatim
  case terumah
  case tetzaveh
  case kiTisa
  case vayakhel
  case pekudei
  
  // MARK: - Leviticus
  case vayikra
  case tzav
  case shemini
  case tazria
  case metzora
  case achareiMot
  case kedoshim
  case emor
  case behar
  case bechukotai
  
  // MARK: - Numbers
  case bamidbar
  case naso
  case behaalotecha
  case shelachLecha
  case korach
  case chukat
  case balak
  case pinchas
  case matot
  case masei
  
  // MARK: - Deuteronomy
  case devarim
  case vaetchanan
  case ekev
  case reeh
  case shoftim
  case kiTetze
  case kiTavo
  case nitzavim
  case vayelech
  case haazinu
  case vezotHaberachah
}

extension ParshahIdentifier {
  var bookIdentifier: BookIdentifier {
    switch self {
    case .bereshit, .noach, .lechLecha, .vayera, .chayeiSarah,
         .toldot, .vayetze, .vayishlach, .vayeshev, .miketz,
         .vayigash, .vayechi: return .genesis
    case .shemot, .vaera, .bo, .beshalach, .yitro,
         .mishpatim, .terumah, .tetzaveh, .kiTisa, .vayakhel,
         .pekudei: return .exodus
    case .vayikra, .tzav, .shemini, .tazria, .metzora,
         .achareiMot, .kedoshim, .emor, .behar, .bechukotai: return .leviticus
    case .bamidbar, .naso, .behaalotecha, .shelachLecha, .korach,
         .chukat, .balak, .pinchas, .matot, .masei: return .numbers
    case .devarim, .vaetchanan, .ekev, .reeh, .shoftim,
         .kiTetze, .kiTavo, .nitzavim, .vayelech, .haazinu,
         .vezotHaberachah: return .deuteronomy
    }
  }
}
