#!/usr/local/bin/ruby
def f(n)
  if n.even?
    n / 2
  else
    3*n+1
  end
end

def size_f(n)
  @size_f ||= {}
  @size_f[n] ||=
    if n == 1
      1
    else
      1 + size_f(f(n))
    end
end

p (1..1000000).max_by {|i|
  size_f(i)
}
#p size_f(837799)
