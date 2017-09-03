def caesar_cipher(to_crypt, num)
  crypted = []

  to_crypt.each_byte do |c|
    case c
      when 65..90
        c += num.to_i
        if (c > 90)
          c -= 26
        end
      when 97..122
        c += num.to_i
        if (c > 122)
          c -= 26
        end
      else
          c = c
    end
    crypted << c.chr
  end
crypted.join
end
