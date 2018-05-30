require 'minitest/autorun'
require_relative './regexp_checker'

class RegexpCheckerTest < Minitest::Test
  def setup
    @regexp_checker = RegexpChecker.new
  end

  def test_regexp_checker_match
    @regexp_checker.stub :input_text, '123-456-789' do
      @regexp_checker.stub :input_pattern, '[1-6]+' do
        assert_output(@regexp_checker.run) { puts 'Matched: 123,456' }
      end
    end
  end

  def test_regexp_checker_no_match
    @regexp_checker.stub :input_text, 'abc-def-ghi' do
      @regexp_checker.stub :input_pattern, '[1-6]+' do
        assert_output(@regexp_checker.run) { puts 'Nothing matched.' }
      end
    end
  end

  def test_regexp_checker_regexp_error
    @regexp_checker.stub :input_text, '123-456-789' do
      @regexp_checker.stub :input_pattern, '[1-6+' do
        assert_raises(@regexp_checker.run)
      end
    end
  end
end
