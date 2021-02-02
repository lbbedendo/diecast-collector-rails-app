class AutomakersController < ApplicationController
    def index
        @automakers = Automaker.all
    end

    def show
        @automaker = Automaker.find(params[:id])
    end

    def new
        @automaker = Automaker.new
    end

    def create
        @automaker = Automaker.new(automaker_params)

        if @automaker.save
            redirect_to action: "index"
        else
            render :new
        end
    end

    private
        def automaker_params
            params.require(:automaker).permit(:name, :country)
        end
end
