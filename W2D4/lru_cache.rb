class LRUCache
    def initialize(size)
      @size = size
      @cache = []
    end

    def count
      @cache.count
    end

    def add(el) #looked at solution for #add
      if @cache.include?(el)
        @cache.delete(el)
        @cache << el
      elsif count >= @size
        @cache.shift
        @cache << el
      else
        @cache << el
      end
    end

    def show
      @cache
      nil
    end

    private
    # helper methods go here!

  end
