def three_even?(list)
    count = 0
    list.each do |i|
        if i % 2 == 0 
            count += 1
        end

    (list.size - 1).times do |i|
        if list[i] % 2 == 1 && list[i + 1] % 2 == 1 && list[i + 2] % 2 == 1
            return false
        end

        if count == 3
            return true
        end
    end


end

# puts three_even?([2, 1, 3, 5]) # false
# puts three_even?([2, 4, 12, 5]) # true
# puts three_even?([2, 1, 4, 6]) # false
# puts three_even?([1, 4, 6, 4]) # true
# puts three_even?([]) # false



def first_list(list)
    max_value = 0
  
    list.each do |i|
      if i > max_value
        max_value = i
      end
    end
  
    max_value
end

def second_list(list)
    max_value = 0
  
    list.each do |i|
      if i > max_value
        max_value = i
      end
    end
  
    max_value
end

def bigger_two(list,list2)
    if first_list >> second_list
        return first_list
    end
    if second_list >> first_list
        return second_list
    end
    print first_list(list)
    print second_list(list2)
end

# print bigger_two([1, 2], [3, 4])  # >> [3, 4]
# print bigger_two([1, 7], [4, 4])  # >> [4, 7]

def series_up(list)
    (list)((list + 1 )/2)

end


print series_up(1) # [1]
print series_up(2) # [1 , 1, 2]
print series_up(3) # [1, 1, 2, 1, 2, 3]
print series_up(4) # [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]