public enum ParshahIdentifier: String, Codable, CaseIterable {
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
  case vayakhelPekudei
  
  // MARK: - Leviticus
  case vayikra
  case tzav
  case shemini
  case tazria
  case metzora
  case tazriaMetzora
  case achareiMot
  case kedoshim
  case achareiMotKedoshim
  case emor
  case behar
  case bechukotai
  case beharBechukotai
  
  // MARK: - Numbers
  case bamidbar
  case naso
  case behaalotecha
  case shelachLecha
  case korach
  case chukat
  case balak
  case chukatBalak
  case pinchas
  case matot
  case masei
  case matotMasei
  
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
  case nitzavimVayelech
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
         .pekudei, .vayakhelPekudei: return .exodus
    case .vayikra, .tzav, .shemini, .tazria, .metzora,
         .tazriaMetzora, .achareiMot, .kedoshim, .achareiMotKedoshim, .emor,
         .behar, .bechukotai, .beharBechukotai: return .leviticus
    case .bamidbar, .naso, .behaalotecha, .shelachLecha, .korach,
         .chukat, .balak, .chukatBalak, .pinchas, .matot,
         .masei, .matotMasei: return .numbers
    case .devarim, .vaetchanan, .ekev, .reeh, .shoftim,
         .kiTetze, .kiTavo, .nitzavim, .vayelech, .nitzavimVayelech,
         .haazinu, .vezotHaberachah: return .deuteronomy
    }
  }
}
