module Common
  extend ActiveSupport::Concern

  # Commonモジュールにbirthdayメソッドを定義(リファクタリング)
  def birthday
    @birthday = params[:birthday]
    @year = @birthday[0, 4]  # 8桁の文字列のはじめの4桁を@yearに代入
    @month = @birthday[4, 2]  # 8桁の文字列の次の2桁を@monthに代入
    @day = @birthday[6, 2]  # 8桁の文字列の最後の2桁を@dayに代入
    @monthday = @birthday[4, 4]  # 8桁の文字列の下4桁を@monthdayに代入
    # 今日が誕生日か判別
    if @monthday.to_i == Date.today.strftime("%m%d").to_i
      @your_birthday = "今日があなたの誕生日です。"
    end
  end

    # Commonモジュールにzodiac_signメソッドを定義
  def zodiac_sign
    @zodiac_sign = case @monthday.to_i  # @monthdayに格納された文字列を数値化してcase文でパターンマッチング
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

  # Commonモジュールにfortuneメソッドを定義
  def fortune
    fortunes = ["大吉", "中吉", "吉", "小吉", "凶", "大凶"]
    @fortune = fortunes.shuffle![0]
  end
end
