class AutomakersController < ApplicationController
    def index
        @automakers = Automaker.all
    end

    def show
        @automaker = Automaker.find(params[:id])
    end
end
