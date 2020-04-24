start = Time.now


def int_to_word(int)
    numbers_to_name = {
        1000000 => "million",
        1000 => "thousand",
        100 => "hundred",
        90 => "ninety",
        80 => "eighty",
        70 => "seventy",
        60 => "sixty",
        50 => "fifty",
        40 => "forty",
        30 => "thirty",
        20 => "twenty",
        19=>"nineteen",
        18=>"eighteen",
        17=>"seventeen", 
        16=>"sixteen",
        15=>"fifteen",
        14=>"fourteen",
        13=>"thirteen",              
        12=>"twelve",
        11 => "eleven",
        10 => "ten",
        9 => "nine",
        8 => "eight",
        7 => "seven",
        6 => "six",
        5 => "five",
        4 => "four",
        3 => "three",
        2 => "two",
        1 => "one"
      }
    word = ""
    numbers_to_name.each do |num, name|
        if int >= num
            if int>=100
                word+= numbers_to_name[int/num] + " "
            end
            word+=name + " "
            if int%100!=0 and int>100
                word+="and "
            end
            int=int%num
            if int==0
                return word
            end
        end
    end
      word
end

stop = Time.now
num_of_letters=0
word=''
for value in 1..1000 do
    word = int_to_word(value)
    num_of_letters+=word.length - word.split(" ").length
    
end
print "The number of letters are : ",num_of_letters,"\n"
print "The program took ", stop-start," ms to complete"
