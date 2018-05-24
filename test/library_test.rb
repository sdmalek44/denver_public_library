require './test/test_helper'
require './lib/author'
require './lib/library'

class LibraryTest < Minitest::Test
  def test_it_exists
    l = Library.new

    assert_instance_of Library, l
  end

  def test_it_stores_book_objects
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")
    villette  = charlotte_bronte.add_book("Villette", "1853")

    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")

    dpl = Library.new

    assert_equal [], dpl.books

    dpl.add_to_collection(jane_eyre)
    assert_equal [jane_eyre], dpl.books

    dpl.add_to_collection(mockingbird)
    dpl.add_to_collection(villette)
    assert_equal [jane_eyre, mockingbird, villette], dpl.books

    assert dpl.include?("To Kill a Mockingbird")
    refute dpl.include?("A Connecticut Yankee in King Arthur's Court")

    dpl.card_catalogue
  end
end
