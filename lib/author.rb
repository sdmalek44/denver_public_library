require './lib/book'

class Author
  attr_reader :books

  def initialize(name_hash)
    @first_name = name_hash[:first_name]
    @last_name = name_hash[:last_name]
    @books = []
  end

  def add_book(title, date)
    @books << Book.new({author_first_name: @first_name, author_last_name: @last_name,
       title: title, publication_date: date})
  end
end
