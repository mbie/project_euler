# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?


def primes(top)
  n = 2
  primes = []
  loop do
    primes << n if (2..Math.sqrt(n)).all? {|x| n % x != 0 }
    return primes.last if primes.count == top
    n += 1
  end
end

puts primes(10001) # => 104743


# require 'prime'
# puts Prime.take(10001).last