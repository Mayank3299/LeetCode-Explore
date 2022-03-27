# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
    return [] if root.nil?
    
    res= []
    stack= []
    
    while true
       unless root.nil?
           stack.unshift(root)
           root = root.left
       else
           break if stack.empty?
               
           root = stack.shift
           res << root.val
           root = root.right
       end
    end
    
    res
end