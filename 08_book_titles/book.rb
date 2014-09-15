class Book
  attr_accessor :title
 
  def title=(value)

    array_title = value.split(" ")
    array_title.to_enum.with_index(0).each do |w, i|
    array_title[i] = w.capitalize if ((w != "and" && w != "the" && w != "an" && w != "in" && w != "of" && w != "a") || i == 0)
    end
    @title = array_title.join(" ")
  end

end
