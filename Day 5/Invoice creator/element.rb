class Element
  @sub_elements=[]
  @name

  def initialize(name)
    @name=name
  end

  def add_sub_element(element)
    @sub_elements << element
  end

  def get_price

  end

end