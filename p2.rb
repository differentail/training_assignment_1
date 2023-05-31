# frozen_string_literal: true

# tree structure class
class Tree
  attr_reader :number

  def initialize(number, left = nil, right = nil)
    @number = number
    @left = left
    @right = right
  end

  def left
    return @left unless @left.nil?

    nil
  end

  def right
    return @right unless @right.nil?

    nil
  end
end

# solver class for problem 2
class Solve2
  def initialize(tree)
    @tree = tree
  end

  def solve
    return search(@tree, @tree.number) unless @tree.nil?

    0
  end

  def search(tree, max)
    return 0 if tree.nil?

    next_max = max
    cnt = 0
    if tree.number >= max
      cnt = 1
      next_max = tree.number
    end
    cnt + search(tree.left, next_max) + search(tree.right, next_max)
  end
end

if __FILE__ == $PROGRAM_NAME
  t = Tree.new(8, Tree.new(2, Tree.new(8, nil, nil), Tree.new(7, nil, nil)), Tree.new(6, nil, nil))

  s = Solve2.new(t)
  puts s.solve
end
