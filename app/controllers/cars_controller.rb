class CarsController < ApplicationController
    def create
        @automaker = Automaker.find(params[:automaker_id])
        @car = @automaker.cars.create(car_params)
        redirect_to automaker_path(@automaker)
    end

    private
        def car_params
            params.require(:car).permit(:name, :model_year, :color, :product_code)
        end
end
