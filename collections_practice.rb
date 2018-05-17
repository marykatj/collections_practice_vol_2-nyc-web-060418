def begins_with_r(array)
  array.all? do |element|
    element.start_with?("r")
  end
end

def contain_a(array)
  new_array = []
  array.each do |element|
    if element.include?("a")
      new_array.push(element)
    end
  end
  return new_array
end

def first_wa(array)
  first_wa = nil
  array.each do |element|
    if element.match(/wa/)
      first_wa = element
      break
    end
  end
first_wa
end

def remove_non_strings(array)
  array.delete_if do |element|
    element != element.to_s
  end
end


def count_elements(array)      
  array.each do |original_hash|        
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end .uniq
end

def merge_data(keys, data)     # combined two nested data structures into one
  keys.flatten(data)           # hashes
end

def find_cool(hash)
  array = []    # find all cool hashes.  .select?
  hash.select do |key, value|
    value == cool
  end
end

def organize_schools(hash)
  hash.keys.sort!
end
