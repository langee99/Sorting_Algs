require "./Sorting_Algs/*"

module Algs
  def self.bubblesort(array)
    x = 0
    while true
      swapped = false
      j = 0

      while true

        if array[j] > array[j+1]
          tmp = array[j]
          array[j] = array[j+1]
          array[j+1] = tmp
          swapped = true
        end
        j += 1
        break if j == array.size-1
      end # Inner while

      break if !swapped

      x += 1
      break if x == array.size-1
    end #Outer while

    return array
  end

  def self.selectionSort(array)
    x = 0

    while true
      swapped = false
      j = x
      min_index = x

      while true

        if array[min_index] > array[j]
          min_index = j
        end
        j += 1
        break if j == array.size
      end # Inner while

      tmp = array[x]
      array[x] = array[min_index]
      array[min_index] = tmp

      x += 1
      break if x == array.size
    end #Outer while

    return array

  end

  def self.insertionSort(array)
    x = 1
    while true
      j = x

      while j > 0 && array[j-1] > array[j]
        tmp = array[j]
        array[j] = array[j-1]
        array[j-1] = tmp
        j -= 1
      end

      x += 1
      break if x == array.size
    end
  end

  def self.heapSort(array)
    to_heap(array)
    bottom = array.size - 1
    # puts "Heaped: #{array}".colorize.red
    while bottom > 0
      # Swap
      array[0], array[bottom] = array[bottom], array[0]
      siftdown(array, 0, bottom)
      bottom -= 1
    end

    array
  end

  # Creates a heap
  def self.to_heap(array)
    i = (array.size/2) - 1
    while i >= 0
      siftdown(array, i, array.size)
      i -= 1
    end
    array
  end

  def self.siftdown(array, i, max)
    i_big, c1, c2 = 0, 0, 0
    while i < max
      i_big = i
      c1 = (2*i) + 1
      c2 = c1 + 1

      if c1 < max && array[c1] > array[i_big]
        i_big = c1
      end

      if c2 < max && array[c2] > array[i_big]
        i_big = c2
      end

      break if i_big == i

      # Swap
      array[i], array[i_big] = array[i_big], array[i]

      i = i_big
    end
    array
  end

end # Module
