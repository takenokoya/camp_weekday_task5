module Common
  extend ActiveSupport::Concern

  # 生まれた月と日を渡すと今日が誕生日か判別
  def confirm_birthday(month, day)
    monthday = (month + day).to_i
    if monthday == Date.today.strftime("%m%d").to_i
      "今日があなたの誕生日です。"
    end
  end

  # 生まれた月と日を渡すとcase文でパターンマッチングして星座を返す
  def determine_zodiac_sign(month, day)
    monthday = (month + day).to_i
    case monthday
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

  # 生年月日を渡すと今日の日付と引き算した結果をもとに年齢を返す
  def calculate_age(birthday)
    (Date.today.strftime("%Y%m%d").to_i - birthday.to_i) / 10000
  end
  
end
