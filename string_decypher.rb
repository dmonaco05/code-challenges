def decypher(text, shift_value)
    msg = []
    text.each_char do |char|
        if char.ord + shift_value > 122
            msg << (char.ord + shift_value - 26).chr
        else
           msg << (char.ord + shift_value).chr
       end
    end
    msg.join.gsub!(/-/, " ")
end

decypher("Fraq hf gur pbqr lbh hfrq gb qrpbqr guvf zrffntr", 13)
