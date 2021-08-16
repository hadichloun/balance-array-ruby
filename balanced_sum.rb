a = [1, 2, 3, 4, 6]

def left_sum(arr, index)
    arr[0..index - 1].sum
end

def right_sum(arr, index)
    arr[index + 1.. -1].sum
end

# puts "left sum: #{left_sum(a, 3)}" 
# puts "right sum: #{right_sum(a, 3)}"

def balancedSum(arr)
    pivot = 0
    arr.each_with_index do |ele, index|
        left_sum = left_sum(arr, index)
        right_sum = right_sum(arr, index)

        if left_sum == right_sum
            pivot = index
            break
        end
    end
    puts "pivot is: #{pivot}"
end

balancedSum(a)