def three_even?(list)
    # count = 0
    # list.each do |i|
        # if i % 2 == 0  # I dont need this part of my code due to it doing nothing for me.
    #         count += 1
    #     end

    (list.size - 2).times do |i| # I change 1 to 2 due to needing my code to "look" at more number
        if list[i] % 2 == 0 && list[i + 1] % 2 == 0 && list[i + 2] % 2 == 0 # I need them equal to 0 due to stating that is an even number
          return true
        end

        # if count == 3  I dont need to count due to my code above stating if it is even then return true
        

    end
    return false


end

# # puts three_even?([2, 1, 3, 5]) # false
# # puts three_even?([2, 4, 12, 5]) # true
# # puts three_even?([2, 1, 4, 6]) # false
# # puts three_even?([1, 4, 6, 4]) # true
# # puts three_even?([]) # false



# def first_list(list)
#     max_value = 0
  
#     list.each do |i|
#       if i > max_value
#         max_value = i
#       end
#     end
  
#     max_value
# end

# def second_list(list)
#     max_value = 0
  
#     list.each do |i|
#       if i > max_value
#         max_value = i                     This entire code I was under the impression that you looked at all the number and returned the two highest values from each list
#       end
#     end
  
#     max_value
# end

# def bigger_two(list,list2)
#     if first_list >> second_list
#         return first_list
#     end
#     if second_list >> first_list
#         return second_list
#     end
#     print first_list(list)
#     print second_list(list2)
# end
def bigger_two(list_1,list_2)
    if list_1[0] + list_1[1] >= list_2[0] + list_2[1] # This part adds the two numbers and test which on is greater
        return list_1
    end
    return list_2 # if the statement above is not true then return the second list since it is the greater one
    if list_1[0] + list_1[1] == list_2[0] + list_2[1]
        return list_1 # this part states that if they are equal then return the first list
    end

end

print bigger_two([1, 2], [3, 4])  # >> [3, 4]
print bigger_two([1, 7], [4, 4])  # >> [4, 7]


def series_up(nums)
  # (list)((list + 1 )/2)   This was just an act of despiration due to time running out
    series = 0 # start it at the correct value
    list = [] # start the list empty and then we can work from there
    nums.times do |sequence| # I need to run a loop for my sequence
        n = 0 # set it to the original number 
        nums.times do |nums|
          list[n + series] = n + 1
          n += 1
      end

      series += sequence + 1 # exponential growth to the series
    end
    return list
      
end

#  n(n+1)/2

# print series_up(1) # [1]
# print series_up(2) # [1 , 1, 2]
# print series_up(3) # [1, 1, 2, 1, 2, 3]
# print series_up(4) # [1, 1, 2, 1, 2, 3, 1, 2, 3, 4]