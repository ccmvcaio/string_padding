class StringUtils
  def padding(frase, padding_array)
    return frase if padding_array == []
    upper = "\n" * padding_array[0]
    right = " " * padding_array[1]
    bottom = "\n" * padding_array[2]
    left = " " * padding_array[3]
    "#{upper}#{right}#{frase}#{left}#{bottom}"
  end
end
