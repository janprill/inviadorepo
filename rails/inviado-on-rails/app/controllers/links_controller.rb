class LinksController < InheritedResources::Base

  private

    def link_params
      params.require(:link).permit(:title, :target, :uri, :description, :source, :raw)
    end

end
