module  Quiz
  module  LCD

    number_lcd = {
      0 => "-| | | |-",
      1 => "   |   | ",
      2 => "-  |-|  -",
      3 => "-  |-  |-",
      4 => " | |-  | ",
      5 => "-|  -  |-",
      6 => "-|  -| |-",
      7 => "-  |   | ",
      8 => "-| |-| |-",
      9 => "-| |-  |-"
    }

    define_method :get_lcd do |length =5, str|
        num_arr = str.each_char.map(&:to_i)
        result = []

        num_arr.each{|n| result << " " << number_lcd[n][0] * length << " " << " "}
        result<< "\n"

        length.times do
           num_arr.each{|n| result << number_lcd[n][1] << number_lcd[n][2] * length<< number_lcd[n][3] << " "}
           result << "\n"
        end

        num_arr.each{|n| result << " " << number_lcd[n][4] * length << " " << " "}
        result<< "\n"
        

        length.times do
           num_arr.each{|n| result << number_lcd[n][5] << number_lcd[n][6] * length<< number_lcd[n][7] << " "}
           result << "\n"
        end

        num_arr.each{|n| result << " " << number_lcd[n][8] * length << " " << " "}
        result<< "\n"
        result.join
    end  	
    
  end
end  

extend Quiz::LCD

if __FILE__ == $0
  puts get_lcd(5, "0123456789") 
end
