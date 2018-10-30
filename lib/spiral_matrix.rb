class SpiralMatrix

  def self.return_result(input_matrix)
    result = []

    while input_matrix.length > 1
      input_matrix[0].each { |val| result << val}
      input_matrix.shift
      input_matrix = rotate(input_matrix)
    end
    
    input_matrix[0].each { |val| result << val}

    result
  end

  
  def self.rotate(matrix)
    length = matrix[0].length.to_i
    new_array = []

    (0...length).each do |i|
      new_sub_array = matrix.flat_map{ |sub_array| sub_array[i] }
      new_array.unshift(new_sub_array)
    end
    new_array
  end
end

