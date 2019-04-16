class Api::V1::CategoryController < Api::V1::ApiController

  # GET /categories
  def index
    @categories = Category.all
  end

  # GET /categories/1
  def show
    render json: @category
  end

  # POST /categories
  def create
    before_action :authenticate_user!
    @category = Category.new(category_params)
    if @category.save
      render json: @category, status: :create
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /categories/1
  def update
    before_action :authenticate_user!
    if @category.update(article_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /categories/1
  def destroy
    before_action :authenticate_user!
    @category.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end