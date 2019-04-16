class Api::V1::ArticlesController < Api::V1::ApiController



  before_action :set_article, only: [:show, :update, :destroy]
  # GET /articles
  def index
    @articles = Article.all
  end

  # GET /articles/1
  def show
    render json: @article
  end

  # POST /articles
  def create
    before_action :authenticate_user!
    @article = Article.new(article_params)
    if @article.save
      render json: @article, status: :create
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1
  def update
    before_action :authenticate_user!
    if @article.update(article_params)
      render json: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  def destroy
    before_action :authenticate_user!
    @article.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content, :price, :user_id, :category_id)
  end
end