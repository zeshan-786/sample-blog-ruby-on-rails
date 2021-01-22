class CommentsController < ApplicationController
  http_basic_authenticate_with name: "syed", password: "1234", only: [:destroy ]
  before_action :set_comment, only: [:destroy]

  # POST /comments
  # POST /comments.json
  def create
    @post = Post.find(params[:post_id])
    @comment =  @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    redirect_to post_path(@post)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @post = Post.find(params[:post_id])
      @comment = @post.comments.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:username, :body)
    end
end
