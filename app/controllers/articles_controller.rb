class ArticlesController < ApplicationController
  def new 
    @article = Article.new
  end
  
  def create
    #render plain: params[:article].inspect
    @artice = Article.new(artice_parmas)
    @article.save
    redirect_to article_show(@article)
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :descrption)
  end
  
end