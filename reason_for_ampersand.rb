require './my_class'

item = MyClass.new 6

item.yield_self do |object|
  puts object.item
end

proc_block = proc do |object|
  puts object.item
end

puts item.yield_self &:item
