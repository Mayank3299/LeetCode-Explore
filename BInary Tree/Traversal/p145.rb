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
def postorder_traversal(root)
   return [] if root.nil?
    
    res= []
    stack1= []
    stack2= []
    
    stack1.unshift(root)
    until stack1.empty?
        node= stack1.shift
        stack2.unshift(node)
        stack1.unshift(node.left) unless node.left.nil?
        stack1.unshift(node.right) unless node.right.nil?
    end
    
    until stack2.empty?
       res << stack2.shift.val
    end
    
    res
end