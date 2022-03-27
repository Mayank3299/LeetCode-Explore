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
# @return {Integer[][]}
def level_order(root)
    return [] if root.nil?
    queue= []
    queue << root
    res= []
    until queue.empty?
        temp = []
        (0...queue.length).each do |_i|
            node = queue.shift
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
            temp << node.val
        end
        res << temp
    end
    res
end