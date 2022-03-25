# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    return 0 if x == 0
    low = 1
    high = x
    ans= 0
    while low <= high
        middle = low + (high - low)/2        
        puts "middle #{middle}"
        puts "x/middle #{x/middle}"
        if middle == x/middle
            return middle
        elsif middle < x/middle
            low = middle + 1
            ans= middle
        else
            high = middle - 1
        end
    end
    
    ans
end

