# Largest prime factor
# Problem 3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?


def max_prime_factor(n)
  prime_factors = []
  while n > 1
    (2..n).each do |x|
      if n % x == 0 then
        n /= x
        prime_factors << x
        break
      end
    end
  end
  prime_factors.max
end

puts max_prime_factor(600851475143)