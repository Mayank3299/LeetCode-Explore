# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
    left= 0
    right= nums.length - 1
    
    while left < right
        mid= left + (right-left)/2
        
        if nums[mid] > nums[mid + 1]
            right = mid
        else
            left = mid + 1
        end
    end
    
    return left
end