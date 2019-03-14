class FortunetellingsController < ApplicationController
  include Common

  def show
    @birthday = params[:birthday]
    @year = @birthday[0, 4]  # 8桁の生年月日のはじめの4桁を@yearに代入
    @month = @birthday[4, 2]  # 8桁の生年月日の次の2桁を@monthに代入
    @day = @birthday[6, 2]  # 8桁の生年月日の最後の2桁を@dayに代入
    @happy_birthday = confirm_birthday(@month, @day)
    @zodiac_sign = determine_zodiac_sign(@month, @day)
    @age = calculate_age(@birthday)
    @fortune = %w(大吉 中吉 吉 小吉 凶 大凶).sample
  end

end
