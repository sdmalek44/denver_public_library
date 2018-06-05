require './test/test_helper'
require './lib/book'

class BookTest < Minitest::Test
  def test_it_exists
    b = Book.new({author_first_name: "Harper", author_last_name: "Lee",
       title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    assert_instance_of Book, b
  end

  def test_access_author
    b = Book.new({author_first_name: "Harper", author_last_name: "Lee",
       title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})

    assert_equal "Harper", b.author_first_name
    assert_equal "Lee", b.author_last_name
  end

  def test_access_title
    b = Book.new({author_first_name: "Harper", author_last_name: "Lee",
       title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_equal "To Kill a Mockingbird", b.title
  end

  def test_access_publication_date
    b = Book.new({author_first_name: "Harper", author_last_name: "Lee",
       title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
    assert_equal "1960", b.publication_date
  end
end
