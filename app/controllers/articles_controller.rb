class ArticlesController < ApplicationController
  def index
@articles= Article.all
  end
  def nope

    @article=Article.find(params[:id])
end
def new
  @article=Article.new
end
def create
  @article = Article.new(name: params[:article][:name], address: params[:article][:address])
  if @article.save
    redirect_to @article
  else
    render :new
end
end
end
