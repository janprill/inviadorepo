class CommentingsController < InheritedResources::Base

  private

    def commenting_params
      params.require(:commenting).permit(:commentable_id, :commentable_type, :description, :raw)
    end

end
