
require "byebug"

def my_min(arr)
  
  sorted = false

  until sorted
    sorted = true

    (0...arr.length-1).each do |i|
      ele = arr[i]
      ele2 = arr[i+1]
      if (ele <=> ele2) == 1
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = false
      end
    end
  end
  arr.first
end

def my_min2(arr)
  smallest = arr[0]

  arr.each do |ele|
    if ele < smallest 
      smallest = ele
    end
  end
  smallest
end
    
    
  #   list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
  #  p my_min(list)  # =>  -5
  #  p my_min2(list)


  def largest_contiguous_subsum(list) 
  subs = []

    (0...list.length).each do |i|
      (i...list.length).each do |j|
        sub = list[i..j]
        subs << sub
      end
    end
  
    max = nil

    subs.each do |sub|
      sum = sub.sum 
      if  max == nil || sum > max
        max = sum
      end
    end
    max
end

def largest_contiguous_subsum2(list)
  running_sum = 0
  max = list[0]
  i = 0
  while i < list.length
    el = list[i]
    running_sum += el
      if running_sum >= max
        max = running_sum
      end
      running_sum = 0 if running_sum < 0
    i +=1
  end

  max
end


# list = [5, 3, -7]
# p largest_contiguous_subsum(list) # => 8


#  list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(list) # => 8 (from [7, -6, 7])

# list = [-5, -1, -3]
# p largest_contiguous_subsum(list) # => -1 (from [-1])


list = [5, 3, -7]
p largest_contiguous_subsum2(list) # => 8


 list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum2(list) # => 8 (from [7, -6, 7])

list = [-5, -1, -3]
p largest_contiguous_subsum2(list) # => -1 (from [-1])

