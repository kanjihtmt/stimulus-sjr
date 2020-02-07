class CommentsController < BaseController
  def index
    @comments = Comment.all
  end

  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      render @comment
    else
      render partial: 'error', status: :bad_request
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:message)
    end
end
