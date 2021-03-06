require './test/test_helper'
require './lib/author'

class AuthorTest < Minitest::Test
  def test_it_exists
    bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_instance_of Author, bronte
  end

  def test_it_adds_books
    bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal [], bronte.books

    bronte.add_book("Jane Eyre", "October 16, 1847")

    bronte.add_book("Villette", "1853")

    assert_instance_of Book, bronte.books[0]
    assert_equal 'Jane Eyre', bronte.books[0].title
    assert_instance_of Book, bronte.books[1]
    assert_equal 'Villette', bronte.books[1].title
    assert_equal 2, bronte.books.length
    assert_equal Array, bronte.books.class
  end
end
