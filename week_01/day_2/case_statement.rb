# p "Please enter your latest score:"
# score = gets.chomp.to_i()
#
# result = case score
# when 10
#    "Genius"
# when 8..9
#    "Merit"
# when 5..7
#    "Pass"
#  when 4
#    "Resit"
# else
#    "Fail"
# end
#
# p result
# score = 6
# result = "fail"
# result = "pass" if (score >= 6)
# p result

score = 6
result = score >= 6 ? "pass" : "fail"
p result
