require 'prime'
tri = 0
count = 0
pro = 1
Prime.each(1000) do |i|
  pro *= i
  count += 1
  if count >= 9
    break
  end
end
puts pro
1.upto(10) {|i|
  tri += i
  div = 0
  Prime.each(tri) do |pri|
    tmp = tri
    count = 0
    while tmp%pri == 0
      tmp /= pri
      count += 1
    end
    div *= count + 1
  end
  if div > 500
    puts tri
    break
  end
}
count = 0
1.upto(pro) {|i|
  if pro%i == 0
    count += 1
  end
}
puts count
