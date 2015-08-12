module  Quiz
  module  MadLib

  	def mad(t = "Our favorite language is ((a gemstone)).")
  		had_get = {}
  		t.gsub(/\(\(([^\)]+)\)\)/) do |find|
  			if had_get.has_key?(find)
  				had_get[find]
  			else
  				p find
  				actual = gets.chomp
  				had_get[find.spilt(":")[0].strip] = actual if find.include?(":")
  				actual
  			end	
  		end	
  	end	

  	
  end
end  