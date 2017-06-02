class CommentsController < ApplicationController

  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(comment_params)
  end

  private

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
