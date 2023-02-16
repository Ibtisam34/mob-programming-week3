class Node
  attr_reader :data
  attr_accessor :left, :right
  def initialize data
    @data = data
  end
end
def array_to_tree(array, index = 0)
  return nil if index >= array.length || array[index].nil?
  node = Node.new(array[index])
  node.left = array_to_tree(array, 2 * index + 1)
  node.right = array_to_tree(array, 2 * index + 2)
  node
end
def search_tree?(array)
  def is_bst(node, min_val = -Float::INFINITY, max_val = Float::INFINITY)
    return true if node.nil?
    return false if node.data <= min_val || node.data >= max_val
    return is_bst(node.left, min_val, node.data) && is_bst(node.right, node.data, max_val)
  end
  root = array_to_tree(array)
  is_bst(root)
end
puts search_tree?([10, 4, 12])  # => true
puts search_tree?([10, 5, 7])  # => false
