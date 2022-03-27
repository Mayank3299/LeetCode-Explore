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
def preorder_traversal(root)
    return [] if root.nil?
    res= []
    stack =[]
    stack.unshift(root)
    until stack.empty?
        node= stack.shift
        res << node.val
        stack.unshift(node.right) unless node.right.nil?
        stack.unshift(node.left) unless node.left.nil?
    end
    
    res
end