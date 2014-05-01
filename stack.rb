class Stack
  def initialize
    @store = Array.new
  end
  
  def pop
    @store.pop
  end
  
  def push(element)
    @store.push(element)
    self
  end
  
  def size
    @store.size
  end
end

@stack = Stack.new
@stack.push(1)
@stack.push(2)
@stack.size