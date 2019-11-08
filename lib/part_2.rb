def palindrome?(str)
    str == str.split("").reverse.join("") # does not use String's reverse method
    #here's a non cheaty way to do this:
    #orig = String.new(str).chars
    #reverse = ""
    #str.length.times { |i| reverse += orig.pop }
    #reverse == str
end

def substrings(str)
    subs = []

    str.each_char.with_index { |c, i| 
        str[i..-1].each_char.with_index { |c2, i2| 
            subs << str[i..i2+i]
        }
    }

    subs
end

def palindrome_substrings(str)
    substrings(str).select { |e| palindrome?(e) && e.length > 1 }
end