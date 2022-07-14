module MyEnumerable
  def all?
    each do |element|
      return false until yield element
    end
    true
  end
end
