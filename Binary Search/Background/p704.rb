# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    left= 0
    right= nums.length - 1
    
    while left <= right
        middle= (left + right)/2
        if target == nums[middle]
            return middle
        elsif target > nums[middle]
            left = middle + 1
        else
            right = middle - 1
        end
    end
    
    return -1
end