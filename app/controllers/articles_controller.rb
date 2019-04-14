# frozen_string_literal: true
class ArticlesController < ApplicationController

  def index
    @articles = Article.search(params[:search])
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Post.find(params[:id])
  end

  def destroy
    @article = Post.find(params[:id])
    @article.destroy
    redirect_to artiles_path
  end

  private

  def article_params
    params.require(:post).permit(
        :title,
        :content,
        :price,
        :category_id
    ).merge(user_id: current_user.id)
  end

  def search_params
    params.require(:articles).permit(:title, :content, :price, :category_id, :search)
  end
end
