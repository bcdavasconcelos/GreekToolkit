# frozen_string_literal: true

require "test_helper"

class GreekToolkitTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::GreekToolkit::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_not_greek
    "A greekless sentence".scan(/(\p{Greek})/).empty? ? false : true
  end

  def test_transliterate
    "ἐν ἀρχὴ ἦν ὁ λόγος καὶ ὁ λόγος ἦν πρὸς τὸν θεὸν".transliterate.grc? ? false : true
  end
  
end

