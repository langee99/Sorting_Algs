require "../src/Sorting_Algs"
require "colorize"
require "benchmark"

SIZE = 100_000
# array = ["Apples", "Zebras", "Monkeys", "Sharks", "Bananas", "Oranges"]
array = randArray(SIZE)
puts "Sorting array of size: #{SIZE.colorize.green}"
# puts "Sorting array: #{array}"

puts "HeapSort:".colorize.red.bold
puts "#{"   Sorted:".colorize.yellow} #{Benchmark.realtime{ sortedArray = Algs.heapSort(array) }.colorize.red}"
# puts "Sorted array: #{array}"


# return a random array of size
def randArray(size)
  r = Random.new()
  nums = Array(Int32).new

  size.times do |x|
    nums.push(r.rand(1..1_000_000))
  end

  return nums
end
