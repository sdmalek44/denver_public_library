

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

  def find_by_author(author)
    books = @books.select {|book| book.author == author}
    Hash[books.map {|book| [book.title, book]}]
  end

  def find_by_publication_date(date)
    books = @books.select {|book| book.publication_date == date}
    Hash[books.map {|book| [book.title, book]}]
  end
end
