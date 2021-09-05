# frozen_string_literal: true

require_relative "GreekToolkit/version"

module GreekToolkit
  class Error < StandardError; end

  class String
    def grc?
      self.scan(/(\p{Greek})/).empty? ? false : true
    end
    
    def no_downcase_diacritics
      self.tr('ααἀἄᾄἂᾂἆᾆᾀἁἅᾅἃᾃἇᾇᾁάάᾴὰᾲᾰᾶᾷᾱᾳβγδεεἐἔἒἑἕἓέέὲζηηἠἤᾔἢᾒἦᾖᾐἡἥᾕἣᾓἧᾗᾑήήῄὴῂῆῇῃθιιἰἴἲἶἱἵἳἷίίὶῐῖϊϊῒῗῑκλμνξοοὀὄὂὁὅὃόόὸπρρῤῥςστυυὐὔὒὖὑὕὓὗύύὺῠῦϋϋΰΰῢῧῡφχψωὠὤᾤὢᾢὦᾦᾠὡὥᾥὣᾣὧᾧᾡώῴὼῲῶῷῳ',
      'ααααααααααααααααααααααααααααβγδεεεεεεεεεεεζηηηηηηηηηηηηηηηηηηηηηηηηηηθιιιιιιιιιιιιιιιιιιιικλμνξοοοοοοοοοοοπρρρρςστυυυυυυυυυυυυυυυυυυυυυυφχψωωωωωωωωωωωωωωωωωωωωωωωω')
    end
  
    def no_upcase_diacritics
      self.tr('ΑΑἈἌᾌἊᾊἎᾎᾈἉἍᾍἋᾋἏᾏᾉΆΆᾺᾸᾹᾼΒΓΔΕΕἘἜἚἙἝἛΈΈῈΖΗᾜᾚᾞᾘᾝᾛᾟᾙΉῊῌἨἬἪἮἩἭἫἯΘΙΙἸἼἺἾἹἽἻἿΊΊῚῘΪΪΐΐῙΚΛΜΝΞΟΟὈὌὊὉὍὋΌΌῸΠῬΡΣΤΥΥὙὝὛὟΎΎῪῨΫΫῩΦΧΨΩΩὨὬᾬὪᾪὮᾮᾨὩὭᾭὫᾫὯᾯᾩΏΏῺῼ',
      'ΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΑΒΓΔΕΕΕΕΕΕΕΕΕΕΕΖΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΗΘΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΙΚΛΜΝΞΟΟΟΟΟΟΟΟΟΟΟΠΡΡΣΤΥΥΥΥΥΥΥΥΥΥΥΥΥΦΧΨΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩΩ') if self.grc?
    end
  
    def no_diacritics
      self.no_downcase_diacritics.no_upcase_diacritics if self.grc?
    end
  
    def transliterate
      self.no_diacritics.gsub('Ͱ', '').gsub('ͱ', '').gsub('Ͳ', '').gsub('ͳ', '').gsub('ʹ', '').gsub(/\u0375/, '').gsub('Ͷ', '').gsub('ͷ', '').gsub('ͺ', '').gsub('ͻ', '').gsub('ͼ', '').gsub('ͽ', '').gsub('Α', 'a').gsub('Β', 'b').gsub('Γ', 'g').gsub('Δ', 'd').gsub('Ε', 'e').gsub('Ζ', 'z').gsub('Η', 'ē').gsub('Θ', 'th').gsub('Ι', 'i').gsub('Κ', 'k').gsub('Λ', 'l').gsub('Μ', 'm').gsub('Ν', 'n').gsub('Ξ', 'x').gsub('Ο', 'o').gsub('Π', 'p').gsub('Ρ', 'r').gsub('Σ', 's').gsub('Τ', 't').gsub('Υ', 'y').gsub('Φ', 'ph').gsub('Χ', 'ch').gsub('Ψ', 'ps').gsub('Ω', 'ō').gsub('α', 'a').gsub('β', 'b').gsub('γ', 'g').gsub('δ', 'd').gsub('ε', 'e').gsub('ζ', 'z').gsub('η', 'ē').gsub('θ', 'th').gsub('ι', 'i').gsub('κ', 'k').gsub('λ', 'l').gsub('μ', 'm').gsub('ν', 'n').gsub('ξ', 'x').gsub('ο', 'o').gsub('π', 'p').gsub('ρ', 'r').gsub('ς', 's').gsub('σ', 's').gsub('τ', 't').gsub('υ', 'y').gsub('φ', 'ph').gsub('χ', 'ch').gsub('ψ', 'ps').gsub('ω', 'ō').gsub('Ϗ', '').gsub('ϐ', '').gsub('ϑ', '').gsub('ϒ', '').gsub('ϓ', '').gsub('ϔ', '').gsub('ϕ', '').gsub('ϖ', '').gsub('ϗ', '').gsub('Ϙ', '').gsub('ϙ', '').gsub('Ϛ', '').gsub('ϛ', '').gsub('Ϝ', '').gsub('ϝ', '').gsub('Ϟ', '').gsub('ϟ', '').gsub('Ϡ', '').gsub('ϡ', '').gsub('Ϣ', '').gsub('ϣ', '').gsub('Ϥ', '').gsub('ϥ', '').gsub('Ϧ', '').gsub('ϧ', '').gsub('Ϩ', '').gsub('ϩ', '').gsub('Ϫ', '').gsub('ϫ', '').gsub('Ϭ', '').gsub('ϭ', '').gsub('Ϯ', '').gsub('ϯ', '').gsub('ϰ', '').gsub('ϱ', '').gsub('ϲ', '').gsub('ϳ', '').gsub('ϴ', '').gsub('ϵ', '').gsub(/\u03F6/, '').gsub('Ϸ', '').gsub('ϸ', '').gsub('Ϲ', '').gsub('Ϻ', '').gsub('ϻ', '').gsub('ϼ', '').gsub('Ͻ', '').gsub('Ͼ', '').gsub('Ͽ', '').gsub(/\u00B7/, '').gsub(/\u0300/, '').gsub(/\u0301/, '').gsub(/\u0304/, '').gsub(/\u0306/, '').gsub(/\u0313/, '').gsub(/\u0342/, '').gsub(/gg/, 'ng').gsub(/gk/, 'nk').gsub(/gx/, 'nx').gsub(/gc/, 'nc').gsub(/r\u{0314}/, 'rh').gsub(/rr/, 'rrh').gsub(/ay/, 'au').gsub(/ey/, 'eu').gsub(/ēy/, 'ēu').gsub(/oy/, 'ou').gsub(/yi/, 'ui').gsub(/\u{0308}/, '').gsub(/ypo/, 'hupo') if self.grc?
    end
  
    def oxia_to_tonos
      self.tr('ΆΈΉΊΎΌΏάέήίΐύΰόώ', 
      'ΆΈΉΊΎΌΏάέήίΐύΰόώ') if self.grc?
    end
    
    def tonos_to_oxia
      self.tr('ΆΈΉΊΎΌΏάέήίΐύΰόώ',
      'ΆΈΉΊΎΌΏάέήίΐύΰόώ') if self.grc?
    end  
      
  end
  
end
