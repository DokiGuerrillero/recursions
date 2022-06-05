# frozen_string_literal: true

def mult35(var, sum = 0)
  return sum if var < 1

  sum += var if (var % 3).zero? || (var % 5).zero?
  sum = mult35(var - 1, sum)
end

p mult35(999)

def even_fibonacci(array = [1, 2])
  element = array[array.length - 1] + array[array.length - 2]
  return array.select! { |number| (number % 2).zero? }.reduce(:+) if element >= 4_000_000

  array.push(element)
  even_fibonacci(array)
end

p even_fibonacci

def largest_prime(number, array = [], count = 3)
  if (number % 2).zero?
    array.push(2)
    largest_prime(number / 2, array)
  else
    if count <= Math.sqrt(number)
      if (number % count).zero?
        array.push(count)
        largest_prime(number / count, array, count)
      else
        largest_prime(number, array, count + 2)
      end
    else
      controller = true
    end
    if number > 2 && controller == true
      array.push(number)
      p array
    end
  end
  array.last
end

p largest_prime(600_851_475_143)

# Why didn't i make this more recursively? well we are talking about 900 options multiply by 900 (900^2) which would be
# 810000 total recursions... so i, (for the well being of my PC which told me frick u)
# decided to use iterations JUST IN THIS ONE

def pal?(element)
  comparator = element.to_s.split('')
  comparator.reverse.join('') == comparator.join('')
end

def all_pals
  pals = []
  initial = (100..999).to_a
  final = (100..999).to_a
  initial.each do |ini|
    final.each do |fin|
      local = ini * fin
      pals.push(local) if pal?(local)
    end
  end
  pals
end

def largest_pal_number(palindrome = '', number = 0)
  all_pals.max
end

# p largest_pal_number

# __________________________________________________________
#
# This bad boy down here works but cant take recursions too deep so i add a iterative version too
# __________________________________________________________

# def smaller_mult(num = 1)
#   checks = (1..10).to_a
#   return num if checks.all? { |index| (num % index).zero? }

#   smaller_mult(num + 1)
# end

# p smaller_mult

def smaller_mult
  checks = (1..20).to_a
  num = 1
  status = false
  while status == false
    num += 1
    status = true if checks.all?{ |index| (num % index).zero? }
  end
  num
end

p smaller_mult
