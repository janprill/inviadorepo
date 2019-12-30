class SearchresultsController < InheritedResources::Base

  private

    def searchresult_params
      params.require(:searchresult).permit(:query, :source, :results, :raw)
    end

end
