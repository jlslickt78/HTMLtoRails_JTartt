class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :destroy]
  before_action :authenticate!, only:[:destroy]
  respond_to :html

  def create
		@product = Product.find(params[:product_id])
		@product.comments.create(comment_params)
		@product.save
		redirect_to product_path(@product.id)
    #@comment = Comment.new(comment_params)
    #@comment.save
    #respond_with(@comment)
  end

  def destroy
		@product = Product.find(params[:product_id])
		@comment = @product.comments.find(params[:id])
    @comment.destroy
		redirect_to product_path(@product.id)

    # respond_with(@comment)
  end

  private
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:author, :opinion, :rating, :product_id)
    end
end
