module MyEnumerable
  def all?(&block)
    each do |element|
      until block.call(element)
        return false
      end
    end
    return true
  end
end