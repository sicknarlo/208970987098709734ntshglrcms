# Your code goes here

Node = Struct.new(:value, :parent, :left_child, :right_child)

class BinarySearchTree

  def initialize(arr)

    raise ArgumentError.new("Must be an array") unless arr.is_a?(Array)

    arr.each do |e|
      raise ArgumentError.new("Elements must all be integers") unless e.is_a?(Integer)
    end

    @arr = arr

  end


  def root

    if @arr.length == 3
      root = Node.new(@arr[0], nil, Node.new(@arr[2], nil, nil, nil), Node.new(@arr[1], nil, nil, nil))
    else
      val = @arr[0]
      max = nil
      @arr.each do |i|
        if i > val
          max = i
          break
        end
      end

      min = nil
      @arr.each do |i|
        if i < val
          min = i
          break
        end
      end

      root = Node.new(val, nil, Node.new(min, nil, nil, nil), Node.new(max, nil, nil, nil))
    end
  end

end