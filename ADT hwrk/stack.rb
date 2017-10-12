class Stack
    def initialize
      @stack = []
    end

    def add(el)
      @stack << el
    end

    def remove
      @stack.pop
      @stack
    end

    def show
      p @stack
    end
  end
