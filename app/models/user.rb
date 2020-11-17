class User
  def initialize
    @first_name = "Yasuhiro"
    @last_name = "Murakami"
    @birthday = "1988/4/8"
    @age = 32
    @birthplace = "Hiroshima/Fukuyama"
    @hobby = "Basketball,Walking"
  end

  def introduce
    <<~EOS

          私の名前は#{@first_name + @last_name}です。
    誕生日は#{@birthday}で、年齢は#{@age}歳。
    出身地は#{@birthplace}で、趣味は#{@hobby}です。

    EOS
  end
end
