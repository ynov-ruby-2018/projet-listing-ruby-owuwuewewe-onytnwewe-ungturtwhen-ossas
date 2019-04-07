# frozen_string_literal: true
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to artiles_path
    else
      # raise @post.errors.messages.inspect
      render template: '/admin/posts/new'
    end
  end

  def edit
    @article = Post.find(params[:id])
  end

  def update
    @article = Post.find(params[:id])
    if @article.update_attributes(article_params)
      redirect_to artiles_path
    else
      render template: '/admin/posts/' + params[:id]
    end
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
end
