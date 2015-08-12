a = "Our favorite language is ((gem:a gemstone)). We think ((gem)) is better than ((a gemstone))."
a.gsub!(/\(\(([^\)]+)\)\)/) { |match|  $1}
p a