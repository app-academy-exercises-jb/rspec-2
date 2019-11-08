def partition(arr, num)
    Array.new(2) { |i| i.even? ? arr.select { |less| less < num } : arr.select { |great| great >= num } }
end

def merge(hash_1, hash_2)
    res = {}
    hash_1.each { |k, v| res[k] = v}
    hash_2.each { |k, v| res[k] = v}
    res
end

def censor(message, verbotten)
    message.split(" ").map { |word| verbotten.any? { |v| word.casecmp(v) == 0 } ? word.gsub(/[aeiou]/i, '*') : word }.join(" ")
end

def power_of_two?(num)
    i = 0
    power = 1
    while power < num
        num == power ? true : nil
        i, power = i + 1, 2 ** i
    end
    num == power ? true : false
end