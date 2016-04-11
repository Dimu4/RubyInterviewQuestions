def print_triangle height
  (1..height).each do |index|
    print_space(height - index)
    print_dots(index)
  end
end

def print_space spaces
  spaces.times { print " " }
end

def print_dots dots
  dots.times { print "* " }
  print "\n"
end

print_triangle 10
