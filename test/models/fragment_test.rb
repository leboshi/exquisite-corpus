require 'test_helper'

class FragmentTest < ActiveSupport::TestCase
  fixtures :fragments

  test "extract_last_sentence returns only sentence for single sentence entry" do
    assert_equal 'This first snippet has only one sentence.', fragments(:one).extract_last_sentence
  end

  test "extract_last_sentence returns second sentence for two sentence entry" do
    assert_equal 'It has two sentences.', fragments(:two).extract_last_sentence
  end

  test "extract_last_sentence returns third sentence for three sentence entry" do
    assert_equal "And here's the third.", fragments(:three).extract_last_sentence
  end

  test "extract_last_sentence respects quotation marks" do
    assert_equal '"This is the second."', fragments(:four).extract_last_sentence
  end

  test "previous_line gives default message when db is empty" do
    while fragment = Fragment.last do
      fragment.destroy
    end

    assert_equal Fragment.empty_db_message, create_dummy_fragment.previous_line
  end

  def create_dummy_fragment
    Fragment.new(body: 'Dummy fragment!')
  end

  test "previous_line gives last sentence of last message when db has entries" do
    assert_equal fragments(:four).extract_last_sentence, create_dummy_fragment.previous_line
  end
end
