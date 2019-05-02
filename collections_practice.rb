# your code goes here
def begins_with_r (array)
  array.all? {|ele| ele[0] == "r"}
end
def contain_a (array)
  array.collect do |ele|
  if ele.include?("a")
    ele
  end
end
