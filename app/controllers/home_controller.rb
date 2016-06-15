class HomeController < ApplicationController
  
  def index #로그인 페이지
    if user_signed_in?  # 로그인 성공하면
      redirect_to "/home/main"  # 메인으로 가도록..
    end
  
  end
  
  def main
    unless user_signed_in?  #유저가 로그인도 안했는데 메인에 접근하려 한다면.. 
      redirect_to "/home/index"  # 인덱스로 넘어가 로그인을 하도록..
    end
  end
  
end
