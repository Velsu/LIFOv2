class Stack
  def initialize(size)
    @size = size
    @ary = Array.new(@size)
    @topstack = -1
  end
  
  def pop
    if empty?
      nil
    else
      popped = @ary[@topstack]
      @ary[@topstack] = nil
      @topstack = @topstack.pred
      popped
    end
  end
  
  def push(element)
    if full? or element.nil?
      nil
    else
      @topstack = @topstack.succ
      @ary[@topstack] = element
      self
    end
  end
  
  def size
    @ary.length
  end
  
  def look
    @ary[@topstack]
  end
  
  private
  
  def full?
    @topstack == (@size -1)
  end
  
  def empty?
    @topstack == -1
  end
end
