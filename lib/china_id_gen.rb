require "china_id_gen/version"

module ChinaIdGen
  # eighteen code = seventeen_code + check_code(last_code)
  #
  def self.gen(seventeen_code)
    params = [7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2]
    count = 0
    seventeen_code.to_s.each_char.to_a.each_with_index{|e,i| count = count + e.to_i * params[i]}
    check_codes = %w(1 0 X 9 8 7 6 5 4 3 2)
    last_code = check_codes[count % 11]
  end 
end
