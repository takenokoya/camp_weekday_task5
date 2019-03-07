module Common
  extend ActiveSupport::Concern

  # Commonモジュールにbirthdayを定義(リファクタリング)
  def birthday
    @birthday = params[:birthday]
    @year = @birthday[0, 4].to_i  # 8桁の文字列のはじめの4桁を数値にして@yearに代入
    @month = @birthday[4, 2].to_i  # 8桁の文字列の次の2桁を数値にして@monthに代入
    @day = @birthday[6, 2].to_i  # 8桁の文字列の最後の2桁を数値にして@dayに代入
    @monthday = @birthday[4, 4].to_i  # 8桁の文字列の下4桁を数値にして@monthdayに代入
  end

    # Commonモジュールにzodiac_signメソッドを定義
  def zodiac_sign
    @zodiac_sign = case @monthday  # case文を用いて@monthdayに格納されている数値をもとに異なる処理を実施
                   when (101..119) then "山羊座"
                   when (120..218) then "水瓶座"
                   when (219..320) then "魚座"
                   when (321..419) then "牡羊座"
                   when (420..520) then "牡牛座"
                   when (521..621) then "双子座"
                   when (622..722) then "蟹座"
                   when (723..822) then "獅子座"
                   when (823..922) then "乙女座"
                   when (923..1023) then "天秤座"
                   when (1024..1122) then "蠍座"
                   when (1123..1221) then "射手座"
                   when (1222..1231) then "山羊座"
                   end
  end

  # Commonモジュールにageメソッドを定義
  def age
    @age = (Date.today.strftime("%Y%m%d").to_i - @birthday.to_i) / 10000
  end
end
