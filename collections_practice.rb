require "pry"
# your code goes here
def begins_with_r (array)
  array.all? {|ele| ele[0] == "r"}
end
def contain_a (array)
  array.collect do |ele|
    if ele.include?("a")
      ele
    end
  end.compact
end
def first_wa (array)
  array.collect do |ele|
    if ele.to_s[0..1] == "wa"
      return ele
    end
  end
end
def remove_non_strings (array)
  array.collect do |ele|
    if ele.is_a? String
      ele
    end
  end.compact
end
#make an array list by delete the dubs
#each element has a Hash with 2 items
def count_elements (array)
  aryHolder = array.uniq
  aryHolder.each do |ele|
    ele[:count] = 0
  end
  binding.pry
  for i in 0...aryHolder.length
    for k in 0...array.length
      if aryHolder[i].include? (array[k])
        aryHolder[i][:count] += 1
      end
    end
  end
  return aryHolder
end
