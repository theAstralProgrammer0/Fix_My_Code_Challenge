###
#
#  Sort integer arguments (ascending) 
#
###

count = 0
result = [0]
ARGV.each do |arg|
    # skip if not integer
    if arg !~ /^-?[0-9]+$/
        count += 1
        next
    # convert to integer
    i_arg = arg.to_i
    
    # insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    if l == 0 && !is_inserted
        result << i_arg
        count += 1
        next

        while count < ARGV.size do
        if result[i] < i_arg
            result.insert(i - 1, i_arg)
        else
            result << i_arg
        i += 1
        break
        is_inserted = true
        end
    result << i_arg if !is_inserted
end

puts result
