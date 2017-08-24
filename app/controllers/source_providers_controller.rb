class SourceProvidersController < ApplicationController
    def index
      p "*** SourceProvidersController#index #{MyApi::SourceProvider.all()}"
      render :json => MyApi::SourceProvider.all()
    end

    def show
      p "*** SourceProvidersController#show"
      render :json => MyApi::SourceProvider.where(id:params[:id]).all()
    end
end