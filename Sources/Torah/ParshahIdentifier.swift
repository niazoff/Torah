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

public extension ParshahIdentifier {
  var title: String {
    switch self {
    case .bereshit: "Bereshit"
    case .noach: "Noach"
    case .lechLecha: "Lech Lecha"
    case .vayera: "Vayera"
    case .chayeiSarah: "Chayei Sarah"
    case .toldot: "Toldot"
    case .vayetze: "Vayetzei"
    case .vayishlach: "Vayishlach"
    case .vayeshev: "Vayeshev"
    case .miketz: "Miketz"
    case .vayigash: "Vayigash"
    case .vayechi: "Vayechi"
    case .shemot: "Shemot"
    case .vaera: "Va'era"
    case .bo: "Bo"
    case .beshalach: "Beshalach"
    case .yitro: "Yitro"
    case .mishpatim: "Mishpatim"
    case .terumah: "Terumah"
    case .tetzaveh: "Tetzaveh"
    case .kiTisa: "Ki Tisa"
    case .vayakhel: "Vayakhel"
    case .pekudei: "Pekudei"
    case .vayakhelPekudei: "Vayakhel-Pekudei"
    case .vayikra: "Vayikra"
    case .tzav: "Tzav"
    case .shemini: "Shemini"
    case .tazria: "Tazria"
    case .metzora: "Metzora"
    case .tazriaMetzora: "Tazria-Metzora"
    case .achareiMot: "Acharei Mot"
    case .kedoshim: "Kedoshim"
    case .achareiMotKedoshim: "Acharei Mot-Kedoshim"
    case .emor: "Emor"
    case .behar: "Behar"
    case .bechukotai: "Bechukotai"
    case .beharBechukotai: "Behar-Bechukotai"
    case .bamidbar: "Bamidbar"
    case .naso: "Naso"
    case .behaalotecha: "Beha'alotecha"
    case .shelachLecha: "Shelach"
    case .korach: "Korach"
    case .chukat: "Chukat"
    case .balak: "Balak"
    case .chukatBalak: "Chukat-Balak"
    case .pinchas: "Pinchas"
    case .matot: "Matot"
    case .masei: "Masei"
    case .matotMasei: "Matot-Masei"
    case .devarim: "Devarim"
    case .vaetchanan: "Va'etchanan"
    case .ekev: "Ekev"
    case .reeh: "Re'eh"
    case .shoftim: "Shoftim"
    case .kiTetze: "Ki Tetzei"
    case .kiTavo: "Ki Tavo"
    case .nitzavim: "Nitzavim"
    case .vayelech: "Vayelech"
    case .nitzavimVayelech: "Nitzavim-Vayelech"
    case .haazinu: "Haazinu"
    case .vezotHaberachah: "Vezot Haberachah"
    }
  }
  
  var hebrewTitle: String {
    switch self {
    case .bereshit: "בראשית"
    case .noach: "נח"
    case .lechLecha: "לך לך"
    case .vayera: "וירא"
    case .chayeiSarah: "חיי שרה"
    case .toldot: "תולדות"
    case .vayetze: "ויצא"
    case .vayishlach: "וישלח"
    case .vayeshev: "וישב"
    case .miketz: "מקץ"
    case .vayigash: "ויגש"
    case .vayechi: "ויחי"
    case .shemot: "שמות"
    case .vaera: "וארא"
    case .bo: "בא"
    case .beshalach: "בשלח"
    case .yitro: "יתרו"
    case .mishpatim: "משפטים"
    case .terumah: "תרומה"
    case .tetzaveh: "תצוה"
    case .kiTisa: "כי תשא"
    case .vayakhel: "ויקהל"
    case .pekudei: "פקודי"
    case .vayakhelPekudei: "ויקהל–פקודי"
    case .vayikra: "ויקרא"
    case .tzav: "צו"
    case .shemini: "שמיני"
    case .tazria: "תזריע"
    case .metzora: "מצורע"
    case .tazriaMetzora: "תזריע–מצורע"
    case .achareiMot: "אחרי מות"
    case .kedoshim: "קדושים"
    case .achareiMotKedoshim: "אחרי מות–קדושים"
    case .emor: "אמור"
    case .behar: "בהר"
    case .bechukotai: "בחוקתי"
    case .beharBechukotai: "בהר–בחוקתי"
    case .bamidbar: "במדבר"
    case .naso: "נשא"
    case .behaalotecha: "בהעלותך"
    case .shelachLecha: "שלח"
    case .korach: "קרח"
    case .chukat: "חקת"
    case .balak: "בלק"
    case .chukatBalak: "חקת–בלק"
    case .pinchas: "פנחס"
    case .matot: "מטות"
    case .masei: "מסעי"
    case .matotMasei: "מטות–מסעי"
    case .devarim: "דברים"
    case .vaetchanan: "ואתחנן"
    case .ekev: "עקב"
    case .reeh: "ראה"
    case .shoftim: "שופטים"
    case .kiTetze: "כי תצא"
    case .kiTavo: "כי תבא"
    case .nitzavim: "נצבים"
    case .vayelech: "וילך"
    case .nitzavimVayelech: "נצבים–וילך"
    case .haazinu: "האזינו"
    case .vezotHaberachah: "וזאת הברכה"
    }
  }
}
