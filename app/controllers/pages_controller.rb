class PagesController < ApplicationController
  
  skip_before_filter :authorize
  def changelang_ru
	
	session[:lang] = "RU"
	
	redirect_to(request.env["HTTP_REFERER"])
  end
  
  def changelang_en
  
	session[:lang] = "EN"
	
	redirect_to(request.env["HTTP_REFERER"])
  end
  
  def index
    if( (session[:lang]) && (session[:lang] == "RU" ) )then
		session[:lang] == "RU"
	else
		session[:lang] == "EN"	
    end
    @title = "Main"
	@pages = Content.where("link = ? and lang = ?", params[:link], session[:lang])
	@pages = @pages[0]
  end
  
  def predphoto
    @title = "Object photo"
    @pages = Content.where("link = ? and lang = ?", params[:link], session[:lang])
	@pages = @pages[0]
  end

  def studphoto
  	@title = ""
  	@pages = Content.where("link = ? and lang = ?", params[:link], session[:lang])
	@pages = @pages[0]
  end

  def reportphoto
  	@title = ""
  	@pages = Content.where("link = ? and lang = ?", params[:link], session[:lang])
	@pages = @pages[0]
  end

  def interphoto
  	@title = ""
  	@pages = Content.where("link = ? and lang = ?", params[:link], session[:lang])
	@pages = @pages[0]
  end

  def portfolio
  	@title = "Portfolio"
  	@pages = Content.find_by_link( params[:link] )
  end

  def price
  	@title = "Prices"
  	@pages = Content.where("link = ? and lang = ?", params[:link], session[:lang])
	@pages = @pages[0]
  end

  def articles
  	@title = "Articles"
  	@pages = Content.where("link = ? and lang = ?", params[:link], session[:lang])
	@pages = @pages[0]
  end
end
