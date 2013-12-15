def to_suddenly_death(string)
  string = string.encode('UTF-8', 'UTF-8-MAC')

  len = string.split('').map { |c|
    c.ascii_only? ? 1 : 2
  }.inject(:+)

  text = "＿#{ '人' * ((len+1)/2 + 2) }＿\n" +
         "＞　#{ string.to_s }#{ ' ' * (len%2) }　＜\n" +
         "￣#{ 'Ｙ' * ((len+1)/2 + 2) }￣"
  text
end

puts to_suddenly_death(ARGV[0])
