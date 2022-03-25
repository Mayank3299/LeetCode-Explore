# The guess API is already defined for you.
# @param num, your guess
# @return -1 if num is higher than the picked number
#          1 if num is lower than the picked number
#          otherwise return 0
# def guess(num)

def guessNumber(n)
    low = 0
    high = n
    
    while low <= high
        middle = low + (high - low)/2
        check = guess(middle)
        if check == 0
            return middle
        elsif check == -1
            high = middle - 1
        else
            low = middle + 1
        end
    end
end