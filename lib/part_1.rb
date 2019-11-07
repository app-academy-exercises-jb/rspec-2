def partition(arr, num)
    Array.new(2) { |i| i.even? ? arr.select { |less| less < num } : arr.select { |great| great >= num } }
end

def merge(hash_1, hash_2)

end

def censor(message, verbotten)
    
end

def power_of_two?(num)

end