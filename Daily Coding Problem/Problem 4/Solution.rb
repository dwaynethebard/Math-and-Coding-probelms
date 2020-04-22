=begin
Given the mapping a = 1, b = 2, ... z = 26, and an encoded message, count the number of ways it can be decoded.
For example, the message '111' would give 3, since it could be decoded as 'aaa', 'ka', and 'ak'.
You can assume that the messages are decodable. For example, '001' is not allowed.

This problem can be solved using recursion. if index 0 is valid solve for n-1 and if [0,1] is valid solve for n-1

=end

raw_input = "1110"


def decode!(message)
    sum=0
    # if there is only one digit left return 1
    if (message.length()<2 && message[0].to_i != 0 )
        return 1
    end

    # check if non-zero then decode the remainder
    if message[-1].to_i != 0
        sum= sum + decode!(message[0..-2])
    end
    # check to see if there is a vaild 2 digit number
    if  message[-2].to_i != 0 && message[-2..-1].to_i < 27
        # if after returning length is 0 don't call decode
        if message[0..-3].length() == 0
            return sum + 1
        end
        sum= sum + decode!(message[0..-3])
    end
    sum
    
end
num=decode!(raw_input)
puts "the number of ways to decode is ", num
