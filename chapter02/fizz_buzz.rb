def fizz_buzz(num)
  ret = ''
  ret += 'Fizz' if num % 3 == 0
  ret += 'Buzz' if num % 5 == 0
  ret = num if ret == ''
  ret
end

1.upto(100) do |num|
  puts fizz_buzz(num)
end
