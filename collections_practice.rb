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
  end
end
