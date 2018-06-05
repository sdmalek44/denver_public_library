class Book
  attr_reader :author_last_name,
              :author_first_name,
              :title,
              :publication_date,
              :author

  def initialize(book_hash)
    @author_first_name = book_hash[:author_first_name]
    @author_last_name = book_hash[:author_last_name]
    @title = book_hash[:title]
    @publication_date = book_hash[:publication_date][-4..-1]
    @author = "#{book_hash[:author_first_name]} #{book_hash[:author_last_name]}"

  end
end
