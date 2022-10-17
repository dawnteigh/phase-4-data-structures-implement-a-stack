class Stack
  def initialize(limit = nil)
    @stack = []
    @limit = limit
  end

  def push(v)
    if @limit && @stack.size >= @limit
      return raise "Stack Overflow"
    end
    @stack.push(v)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack[-1]
  end

  def size
    @stack.size
  end

  def empty?
    @stack.size == 0 ? true : false
  end

  def full?
    if @limit
      return @stack.size >= @limit ? true : false
    end
    false
  end

  def search(v)
    if !@stack.include?(v)
      return -1
    else
      i = @stack.size - 1
      @stack.each{ |va|
      if va != v
        i -= 1
      else
        return i
      end
    }
    end
  end

  
end
