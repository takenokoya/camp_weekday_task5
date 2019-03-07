class FortunetellingsController < ApplicationController
  def show
    # 入力された8桁の生年月日(yyyymmdd)を文字列として取得し変数に代入
    @birthday = params[:birthday]
    # 8桁のはじめの4文字を@year、次の2文字を@month、最後の2文字を@dayに、それぞれ数字に置き換えて代入
    @year = @birthday[0, 4].to_i
    @month = @birthday[4, 2].to_i
    @day = @birthday[6, 2].to_i
  end
end
