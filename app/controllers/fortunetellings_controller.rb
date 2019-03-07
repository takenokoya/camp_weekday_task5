class FortunetellingsController < ApplicationController
  include Common
  # showアクションをリファクタリング。ActiveSupport::ConcernのCommonモジュールへ切り出し
  def show
    birthday  # Commonモジュールからメソッドを呼び出す
    zodiac_sign  # Commonモジュールからメソッドを呼び出す
  end

end
