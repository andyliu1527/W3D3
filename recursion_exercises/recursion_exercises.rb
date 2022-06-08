class Array
    def self.deep_dup(array)


    end

end

def fib(n)
    return [] if n == 0
    return [1] if n == 1
    return [1,1] if n == 2

    fib_result = fib(n - 1)
    fib_result << fib_result[-1] + fib_result[-2]
end

def bsearch(array, target)
    # return nil if array.length == 0
    middle = (array.length / 2)
    if array[middle] == target
        return middle
    elsif array[middle] < target
        bsearch(array[middle + 1..-1], target)
    else
        bsearch(array[0...middle], target)
    end
end

# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p fib(6)

def merge_sort(array)
    return [] if array.empty?
    return array if array.length == 1

    half = array.length / 2
    left = merge_sort(array[0..half])
    right = merge_sort(array[half..-1])
    merge(left, right)

end

def merge(arr_1)

end

p merge_sort([5,4,7,8,1])