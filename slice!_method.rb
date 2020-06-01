@basket = ["apples", "bananas", "apples","apples", "carrots", "apples", "celery", "rice"]

def basket
  @basket
end

def this(array)
  array.each_with_index do |veg, index|
    if veg == "apples"
      x = array.slice!(index)
      puts array
      return x
    end
  end
end
