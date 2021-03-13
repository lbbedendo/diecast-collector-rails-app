class IndexController < ApplicationController
    def index
        @brandsCount = Brand.count
        @collectionsCount = Collection.count
        @carsCount = Car.count
        @automakersCount = Automaker.count
    end
end
