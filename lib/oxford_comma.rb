def oxford_comma(array)
    if array.length == 1
        array.join(' ')
    elsif  array.length == 2
        array.join(' and ')
    else
        array.each_with_index.map { |word,i| i == (array.length - 1) ? "and #{word}" : word }.join(", ")
    end
end

p  oxford_comma(["fiddleheads", "okra", "kohlrabi"])