#!/usr/bin/env ruby
# frozen_string_literal: false

#Methods #grc? #no_downcase_diacritics #no_upcase_diacritics #no_diacritics #transliterate #oxia_to_tonos #tonos_to_oxia #acute_to_grave #grave_to_acute

# String Methods for Ancient Greek
class String
  def grc?
    self.scan(/(\p{Greek})/).empty? ? false : true
  end
  
  def no_downcase_diacritics
    self.tr!('ἀἄᾄἂᾂἆᾆᾀἁἅᾅἃᾃἇᾇᾁάάᾴὰᾲᾰᾶᾷᾱᾳἐἔἒἑἕἓέέὲἠἤᾔἢᾒἦᾖᾐἡἥᾕἣᾓἧᾗᾑήήῄὴῂῆῇῃἰἴἲἶἱἵἳἷίίὶῐῖϊϊΐῒῗῑὀὄὂὁὅὃόόὸῤῥὐὔὒὖὑὕὓὗύύὺῠῦϋΰΰΰῢῧῡὠὤᾤὢᾢὦᾦᾠὡὥᾥὣᾣὧᾧᾡώώῴὼῲῶῷῳ',
    'ααααααααααααααααααααααααααεεεεεεεεεηηηηηηηηηηηηηηηηηηηηηηηηιιιιιιιιιιιιιιιιιιιοοοοοοοοορρυυυυυυυυυυυυυυυυυυυυωωωωωωωωωωωωωωωωωωωωωωωω')
  end

  def no_upcase_diacritics
    self.tr!('ἈἌἌΙἊἊΙἎἎΙἈΙἉἍἍΙἋἋΙἏἏΙἉΙΆΆΆΙᾺᾺΙᾸΑ͂Α͂ΙᾹΑΙἘἜἚἙἝἛΈΈῈἨἬἬΙἪἪΙἮἮΙἨΙἩἭἭΙἫἫΙἯἯΙἩΙΉΉΉΙῊῊΙΗ͂Η͂ΙΗΙἸἼἺἾἹἽἻἿΊΊῚῘΙ͂ΪΪΪ́Ϊ̀Ϊ͂ῙὈὌὊὉὍὋΌΌῸΡ̓ῬΥ̓Υ̓́Υ̓̀Υ̓͂ὙὝὛὟΎΎῪῨΥ͂ΫΫ́Ϋ́Ϋ́Ϋ̀Ϋ͂ῩὨὬὬΙὪὪΙὮὮΙὨΙὩὭὭΙὫὫΙὯὯΙὩΙΏΏΏΙῺῺΙΩ͂Ω͂ΙΩΙ',
    'ΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΕΕΕΕΕΕΕΕΕΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΟΟΟΟΟΟΟΟΟΡΡΥΥΥΥΥΥΥΥΥΥΥΥΥΥΥΥΥΥΥΥΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ')
  end

  def no_diacritics
    self.tr!('ἀἄᾄἂᾂἆᾆᾀἁἅᾅἃᾃἇᾇᾁάάᾴὰᾲᾰᾶᾷᾱᾳἐἔἒἑἕἓέέὲἠἤᾔἢᾒἦᾖᾐἡἥᾕἣᾓἧᾗᾑήήῄὴῂῆῇῃἰἴἲἶἱἵἳἷίίὶῐῖϊϊΐῒῗῑὀὄὂὁὅὃόόὸῤῥὐὔὒὖὑὕὓὗύύὺῠῦϋΰΰΰῢῧῡὠὤᾤὢᾢὦᾦᾠὡὥᾥὣᾣὧᾧᾡώώῴὼῲῶῷῳἈἌἌΙἊἊΙἎἎΙἈΙἉἍἍΙἋἋΙἏἏΙἉΙΆΆΆΙᾺᾺΙᾸΑ͂Α͂ΙᾹΑΙἘἜἚἙἝἛΈΈῈἨἬἬΙἪἪΙἮἮΙἨΙἩἭἭΙἫἫΙἯἯΙἩΙΉΉΉΙῊῊΙΗ͂Η͂ΙΗΙἸἼἺἾἹἽἻἿΊΊῚῘΙ͂ΪΪΪ́Ϊ̀Ϊ͂ῙὈὌὊὉὍὋΌΌῸΡ̓ῬΥ̓Υ̓́Υ̓̀Υ̓͂ὙὝὛὟΎΎῪῨΥ͂ΫΫ́Ϋ́Ϋ́Ϋ̀Ϋ͂ῩὨὬὬΙὪὪΙὮὮΙὨΙὩὭὭΙὫὫΙὯὯΙὩΙΏΏΏΙῺῺΙΩ͂Ω͂ΙΩΙ',
    'ααααααααααααααααααααααααααεεεεεεεεεηηηηηηηηηηηηηηηηηηηηηηηηιιιιιιιιιιιιιιιιιιιοοοοοοοοορρυυυυυυυυυυυυυυυυυυυυωωωωωωωωωωωωωωωωωωωωωωωωΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΕΕΕΕΕΕΕΕΕΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΟΟΟΟΟΟΟΟΟΡΡΥΥΥΥΥΥΥΥΥΥΥΥΥΥΥΥΥΥΥΥΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ')
  end

  def tonos_to_oxia
    self.tr('ΆΈΉΊΎΌΏάέήίΐύΰόώ', 
    'ΆΈΉΊΎΌΏάέήίΐύΰόώ')
  end
  
  def oxia_to_tonos
    self.tr('ΆΈΉΊΎΌΏάέήίΐύΰόώ',
    'ΆΈΉΊΎΌΏάέήίΐύΰόώ')
  end  
  
  def acute_to_grave
    self.tr('ἄᾄἅᾅάάᾴἔἕέέἤᾔἥᾕήήῄἴἵίίΐὄὅόόὔὕύύΰΰὤᾤὥᾥώῴ',
    'ἂᾂἃᾃὰὰᾲἒἓὲὲἢᾒἣᾓὴὴῂἲἳὶὶῒὂὃὸὸὒὓὺὺῢῢὢᾢὣᾣὼῲ')
  end

  def grave_to_acute
    self.tr('ἂᾂἃᾃὰὰᾲἒἓὲὲἢᾒἣᾓὴὴῂἲἳὶὶῒὂὃὸὸὒὓὺὺῢῢὢᾢὣᾣὼῲ',
  'ἄᾄἅᾅάάᾴἔἕέέἤᾔἥᾕήήῄἴἵίίΐὄὅόόὔὕύύΰΰὤᾤὥᾥώῴ')
  end

  def transliterate
    array_of_words = Array.new
    words = self.split
    
    words.each do |w|
      esp_rude = w =~ /[ἁἅᾅἃᾃἇᾇᾁἑἕἓἡἥᾕἣᾓἧᾗᾑἱἵἳἷὁὅὃὑὕὓὗὡὥᾥὣᾣὧᾧᾡ]/ ? "h" : ""
      rho = w =~ /ῥ/ ? "rh" : ""
      word = w.no_diacritics
      word.gsub!('Ͱ', '')
      word.gsub!('ͱ', '')
      word.gsub!('Ͳ', '')
      word.gsub!('ͳ', '')
      word.gsub!('ʹ', '')
      word.gsub!(/\u0375/, '')
      word.gsub!('Ͷ', '')
      word.gsub!('ͷ', '')
      word.gsub!('ͺ', '')
      word.gsub!('ͻ', '')
      word.gsub!('ͼ', '')
      word.gsub!('ͽ', '')
      word.gsub!('Α', 'a')
      word.gsub!('Β', 'b')
      word.gsub!('Γ', 'g')
      word.gsub!('Δ', 'd')
      word.gsub!('Ε', 'e')
      word.gsub!('Ζ', 'z')
      word.gsub!('Η', 'ē')
      word.gsub!('Θ', 'th')
      word.gsub!('Ι', 'i')
      word.gsub!('Κ', 'k')
      word.gsub!('Λ', 'l')
      word.gsub!('Μ', 'm')
      word.gsub!('Ν', 'n')
      word.gsub!('Ξ', 'x')
      word.gsub!('Ο', 'o')
      word.gsub!('Π', 'p')
      word.gsub!('Ρ', 'r')
      word.gsub!('Σ', 's')
      word.gsub!('Τ', 't')
      word.gsub!('Υ', 'y')
      word.gsub!('Φ', 'ph')
      word.gsub!('Χ', 'ch')
      word.gsub!('Ψ', 'ps')
      word.gsub!('Ω', 'ō')
      word.gsub!('α', 'a')
      word.gsub!('β', 'b')
      word.gsub!('γ', 'g')
      word.gsub!('δ', 'd')
      word.gsub!('ε', 'e')
      word.gsub!('ζ', 'z')
      word.gsub!('η', 'ē')
      word.gsub!('θ', 'th')
      word.gsub!('ι', 'i')
      word.gsub!('κ', 'k')
      word.gsub!('λ', 'l')
      word.gsub!('μ', 'm')
      word.gsub!('ν', 'n')
      word.gsub!('ξ', 'x')
      word.gsub!('ο', 'o')
      word.gsub!('π', 'p')
      word.gsub!('ρ', 'r')
      word.gsub!('ς', 's')
      word.gsub!('σ', 's')
      word.gsub!('τ', 't')
      word.gsub!('υ', 'y')
      word.gsub!('φ', 'ph')
      word.gsub!('χ', 'ch')
      word.gsub!('ψ', 'ps')
      word.gsub!('ω', 'ō')
      word.gsub!('Ϗ', '')
      word.gsub!('ϐ', '')
      word.gsub!('ϑ', '')
      word.gsub!('ϒ', '')
      word.gsub!('ϓ', '')
      word.gsub!('ϔ', '')
      word.gsub!('ϕ', '')
      word.gsub!('ϖ', '')
      word.gsub!('ϗ', '')
      word.gsub!('Ϙ', '')
      word.gsub!('ϙ', '')
      word.gsub!('Ϛ', '')
      word.gsub!('ϛ', '')
      word.gsub!('Ϝ', '')
      word.gsub!('ϝ', '')
      word.gsub!('Ϟ', '')
      word.gsub!('ϟ', '')
      word.gsub!('Ϡ', '')
      word.gsub!('ϡ', '')
      word.gsub!('Ϣ', '')
      word.gsub!('ϣ', '')
      word.gsub!('Ϥ', '')
      word.gsub!('ϥ', '')
      word.gsub!('Ϧ', '')
      word.gsub!('ϧ', '')
      word.gsub!('Ϩ', '')
      word.gsub!('ϩ', '')
      word.gsub!('Ϫ', '')
      word.gsub!('ϫ', '')
      word.gsub!('Ϭ', '')
      word.gsub!('ϭ', '')
      word.gsub!('Ϯ', '')
      word.gsub!('ϯ', '')
      word.gsub!('ϰ', '')
      word.gsub!('ϱ', '')
      word.gsub!('ϲ', '')
      word.gsub!('ϳ', '')
      word.gsub!('ϴ', '')
      word.gsub!('ϵ', '')
      word.gsub!(/\u03F6/, '')
      word.gsub!('Ϸ', '')
      word.gsub!('ϸ', '')
      word.gsub!('Ϲ', '')
      word.gsub!('Ϻ', '')
      word.gsub!('ϻ', '')
      word.gsub!('ϼ', '')
      word.gsub!('Ͻ', '')
      word.gsub!('Ͼ', '')
      word.gsub!('Ͽ', '')
      word.gsub!('gg', 'ng')
      word.gsub!('gk', 'nk')
      word.gsub!('gx', 'nx')
      word.gsub!('gc', 'nc')
      word.gsub!(/r\u{0314}/, 'rh')
      word.gsub!(/rr/, 'rrh')
      word.gsub!('ay', 'au')
      word.gsub!('ey', 'eu')
      word.gsub!('ēy', 'ēu')
      word.gsub!('oy', 'ou')
      word.gsub!('yi', 'ui')  
      array_of_words.push("#{esp_rude}#{rho}#{word}")
    end
    array_of_words.join(' ')
  end

  def tokenize
    self.gsub(/([[:punct:]]|·|\.|\;)/, ' \1' ).split
  end

end


# p str = "408b32 πολὺ δὲ τῶν εἰρημένων ἀλογώτατον τὸ λέγειν ἀριθμὸν εἶναι 408b33 τὴν ψυχὴν κινοῦνθ᾽ ἑαυτόν· ὑπάρχει γὰρ αὐτοῖς ἀδύνατα 408b34 πρῶτα μὲν τὰ ἐκ τοῦ κινεῖσθαι συμβαίνοντα, ἴδια δ᾽ ἐκ τοῦ 409a01 λέγειν αὐτὴν ἀριθμόν. πῶς γὰρ χρὴ νοῆσαι μονάδα κινουμένην 409a02, καὶ ὑπὸ τίνος, καὶ πῶς, ἀμερῆ καὶ ἀδιάφορον οὖσαν 409a03; ᾗ γάρ ἐστι κινητικὴ καὶ κινητή, διαφέρειν δεῖ. ἔτι δ᾽ 409a04 ἐπεί φασι κινηθεῖσαν γραμμὴν ἐπίπεδον ποιεῖν, στιγμὴν δὲ 409a05 γραμμήν, καὶ αἱ τῶν μονάδων κινήσεις γραμμαὶ ἔσονται· 409a06 ἡ γὰρ στιγμὴ μονάς ἐστι θέσιν ἔχουσα, ὁ δ᾽ ἀριθμὸς τῆς 409a07 ψυχῆς ἤδη πού ἐστι καὶ θέσιν ἔχει. ἔτι δ᾽ ἀριθμοῦ μὲν ἐὰν 409a08 ἀφέλῃ τις ἀριθμὸν ἢ μονάδα, λείπεται ἄλλος ἀριθμός· 409a09 τὰ δὲ φυτὰ καὶ τῶν ζῴων πολλὰ διαιρούμενα ζῇ καὶ δοκεῖ 409a10 τὴν αὐτὴν ψυχὴν ἔχειν τῷ εἴδει. δόξειε δ᾽ ἂν οὐθὲν διαφέρειν 409a11 μονάδας λέγειν ἢ σωμάτια μικρά· καὶ γὰρ ἐκ τῶν 409a12 Δημοκρίτου σφαιρίων ἐὰν γένωνται στιγμαί, μόνον δὲ μένῃ 409a13 τὸ ποσόν, ἔσται [τι] ἐν αὐτῷ τὸ μὲν κινοῦν τὸ δὲ κινούμενον, 409a14 ὥσπερ ἐν τῷ συνεχεῖ· οὐ γὰρ διὰ τὸ μεγέθει διαφέρειν ἢ 409a15 μικρότητι συμβαίνει τὸ λεχθέν, ἀλλ᾽ ὅτι ποσόν· διὸ ἀναγκαῖον 409a16 εἶναί τι τὸ κινῆσον τὰς μονάδας. εἰ δ᾽ ἐν τῷ ζῴῳ τὸ 409a17 κινοῦν ἡ ψυχή, καὶ ἐν τῷ ἀριθμῷ, ὥστε οὐ τὸ κινοῦν καὶ 409a18 κινούμενον ἡ ψυχή, ἀλλὰ τὸ κινοῦν μόνον. ἐνδέχεται δὲ δὴ 409a19 πῶς μονάδα ταύτην εἶναι; δεῖ γὰρ ὑπάρχειν τινὰ αὐτῇ 409a20 διαφορὰν πρὸς τὰς ἄλλας, στιγμῆς δὲ μοναδικῆς τίς ἂν εἴη 409a21 διαφορὰ πλὴν θέσις; εἰ μὲν οὖν εἰσὶν ἕτεραι αἱ ἐν τῷ σώματι 409a22 μονάδες καὶ αἱ στιγμαί, ἐν τῷ αὐτῷ ἔσονται αἱ μονάδες· 409a23 καθέξει γὰρ <ἑκάστη> χώραν στιγμῆς. καίτοι τί κωλύει ἐν τῷ αὐτῷ 409a24 εἶναι, εἰ δύο, καὶ ἄπειρα; ὧν γὰρ ὁ τόπος ἀδιαίρετος, 409a25 καὶ αὐτά. εἰ δ᾽ αἱ ἐν τῷ σώματι στιγμαὶ ὁ ἀριθμὸς ὁ τῆς 409a26 ψυχῆς, ἢ εἰ ὁ τῶν ἐν τῷ σώματι στιγμῶν ἀριθμὸς ἡ 409a27 ψυχή, διὰ τί οὐ πάντα ψυχὴν ἔχουσι τὰ σώματα; στιγμαὶ 409a28 γὰρ ἐν ἅπασι δοκοῦσιν εἶναι καὶ ἄπειροι. ἔτι δὲ πῶς οἷόν τε 409a29 χωρίζεσθαι τὰς στιγμὰς καὶ ἀπολύεσθαι τῶν σωμάτων, εἴ 409a30 γε μὴ διαιροῦνται αἱ γραμμαὶ εἰς στιγμάς;".transliterate
# p str.no_diacritics if str.grc?

# p 'ἀἄᾄἂᾂἆᾆᾀἁἅᾅἃᾃἇᾇᾁάάᾴὰᾲᾰᾶᾷᾱᾳἐἔἒἑἕἓέέὲἠἤᾔἢᾒἦᾖᾐἡἥᾕἣᾓἧᾗᾑήήῄὴῂῆῇῃἰἴἲἶἱἵἳἷίίὶῐῖϊϊΐῒῗῑὀὄὂὁὅὃόόὸῤῥὐὔὒὖὑὕὓὗύύὺῠῦϋΰΰΰῢῧῡὠὤᾤὢᾢὦᾦᾠὡὥᾥὣᾣὧᾧᾡώώῴὼῲῶῷῳ'.upcase
# p 'ααααααααααααααααααααααααααεεεεεεεεεηηηηηηηηηηηηηηηηηηηηηηηηιιιιιιιιιιιιιιιιιιιοοοοοοοοορρυυυυυυυυυυυυυυυυυυυυωωωωωωωωωωωωωωωωωωωωωωωω'.upcase
