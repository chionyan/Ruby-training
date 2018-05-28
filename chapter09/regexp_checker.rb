class RegexpChecker
  def run
    text = input_text
    regexp = conv_regexp
    output(text, regexp)
  end

  private

  def input_text
    print 'Text?: '
    gets.chomp
  end

  def input_pattern
    print 'Pattern?: '
    gets.chomp
  end

  def conv_regexp
    retry_count = 0
    begin
      Regexp.new(input_pattern)
    rescue RegexpError => e
      retry_count += 1
      if retry_count <= 3
        puts "Invalid pattern: #{e.message}"
        retry
      else
        puts "Quit."
      end
    end
  end

  def output(text, regexp)
    matches = text.scan(regexp)
    if matches.size > 0
      puts "Matched: #{matches.join(',')}"
    else
      puts "Nothing matched."
    end
  end
end
