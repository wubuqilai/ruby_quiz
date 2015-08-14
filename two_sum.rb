# @param {String} str
# @return {Integer}
def my_atoi(str)
    str = "0" if str.nil? || str == ""
    p str
    i = str.to_i
    return [str.to_i,2147483647].min if i > 0
    return [str.to_i, - 2147483648].max if i <= 0
end

p my_atoi("")