class UrlsController < ApplicationController

  def new
    @url_to_fill_out = Url.new    
  end

  def create
    @url_to_save = Url.new(url_params)
    if @url_to_save.save
      @url_to_save.short_form = "http://localhost:3000/urls/#{@url_to_save.id}"
      if @url_to_save.save
        render 'index'
      else
        render 'new'
      end
    else
      render 'new'
    end
  end

  def edit
    @url_to_edit = Url.find(params[:id])
  end

  def update
    @url_to_update = Url.find(params[:id])
    if @url_to_update.save
      render 'index'
    else
      render 'edit'
    end
  end

  def show
    
  end

  def destroy
    
  end

  def index
    @all_urls = Url.all
  end

  private
  def url_params
    params.require(:url).permit(:long_form)
  end

end
