

class Library
  attr_reader :books

  def initialize
    @books = Array.new
  end

  def add_to_collection(book)
    @books << book
  end

  def include?(title)
    if @books != []
      @books.each {|book| return true if book.title == title}
    end
    false
  end

  def card_catalogue
    @books.sort_by {|book| book.author_last_name }
  end
end
