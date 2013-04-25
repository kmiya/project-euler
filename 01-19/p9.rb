998.downto(2) { |c|
  (c-1).downto(1) { |b|
    a = 1000-b-c
    break if a < 0 || a == b
    if a*a + b*b == c*c
      puts "#{a},#{b},#{c},#{a*b*c}"
      puts "#{c*c-b*b},#{a*a}"
      break
    end
  }
}
