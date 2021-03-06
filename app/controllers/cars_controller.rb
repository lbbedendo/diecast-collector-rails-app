class CarsController < ApplicationController
    def create
        @automaker = Automaker.find(params[:automaker_id])
        @car = @automaker.cars.create(car_params)
        redirect_to automaker_path(@automaker)
    end

    def index
        @cars = Car.joins("JOIN automakers ON automakers.id = cars.automaker_id").order("automakers.name, cars.name")
    end

    def show
        @car = Car.includes(:brand, :collection).find(params[:id])
    end

    private
        def car_params
            params.require(:car).permit(:name, :model_year, :color, :product_code, :collection_id, :brand_id)
        end
end
