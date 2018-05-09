def fizz_buzz(num)
  ret = ''
  ret += 'Fizz' if num % 3 == 0
  ret += 'Buzz' if num % 5 == 0
  ret = num if ret == ''
  ret
end

for num in 1..100
  puts fizz_buzz(num)
end
