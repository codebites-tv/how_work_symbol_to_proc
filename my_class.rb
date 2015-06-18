class MyClass
  attr_accessor :item

  def initialize(item)
    @item = item
  end

  def yield_self
    yield self
  end

  def self.to_proc
    puts 'returning proc'
    proc do |object|
      puts object.item
      object.item
    end
  end

  def self.items
    5.times.collect { |n| MyClass.new(n) }
  end
end
