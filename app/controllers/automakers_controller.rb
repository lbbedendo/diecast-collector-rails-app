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

    def edit
        @automaker = Automaker.find(params[:id])
    end

    def update
        @automaker = Automaker.find(params[:id])

        if @automaker.update(automaker_params)
            redirect_to action: "index"
        else
            render :edit
        end
    end

    def destroy
        @automaker = Automaker.find(params[:id])
        @automaker.destroy

        redirect_to root_path
    end

    private
        def automaker_params
            params.require(:automaker).permit(:name, :country)
        end
end
