class PigLatinizer
    def piglatinize(string)
        wordsarr = string.split(" ")
        wordsarr.map do |word|
            if word =~ /\A[A-Z]/
                if word =~ /\A[AEIOU]/
                    p "aeiou"
                    p word + "way"
                elsif word =~ /\A(Sch|Scr|Shr|Sph|Spl|Spr|Squ|Str|Thr)/
                    threeletters = word.slice!(0..2)
                    p "3 blend"
                    p word + threeletters + "ay"
                elsif word =~ /\A(Bl|Br|Ch|Cl|Cr|Dr|Fl|Fr|Gl|Gr|Pl|Pr|Sc|Sh|Sk|Sl|Sm|Sn|Sp|St|Sw|Th|Tr|Tw|Wh|Wr)/
                    twoletters = word.slice!(0..1)
                    p "2 blend"
                    p word + twoletters + "ay"
                else 
                    oneletter = word.slice!(0)
                    p "single"
                    p word + oneletter + "ay"
                end
            else
                if word =~ /\A[aeiou]/
                    p "aeiou"
                    p word + "way"
                elsif word =~ /\A(sch|scr|shr|sph|spl|spr|squ|str|thr)/
                    threeletters = word.slice!(0..2)
                    p "3 blend"
                    p word + threeletters + "ay"
                elsif word =~ /\A(bl|br|ch|cl|cr|dr|fl|fr|gl|gr|pl|pr|sc|sh|sk|sl|sm|sn|sp|st|sw|th|tr|tw|wh|wr)/
                    twoletters = word.slice!(0..1)
                    p "2 blend"
                    p word + twoletters + "ay"
                else 
                    oneletter = word.slice!(0)
                    p "single"
                    p word + oneletter + "ay"
                end
            end
        end.join(" ")
    end
end
