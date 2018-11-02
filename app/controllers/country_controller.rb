class CountryController < ApplicationController

    def home

    end

    def list
    @countrys = Country.all
    end

    def show
    @country = Country.find(params[:id])
    end

    def new
      @country = Country.new
      # @foods = Food.all
    end

    def create
      @country = Country.new(country_params)
      if @country.save
        redirect_to :action => 'list'
      else
        # @countrys = Country.all
        render :action => 'new'
    end
  end

    def country_params
      params.require(:countrys).permit(:name, :capital)
    end

    def edit
      @country = Country.find(params[:id])
      # @foods = Food.all
    end

    def update
      @country = Country.find(params[:id])
      if @country.update_attributes(country_param)
        redirect_to :action => 'show', :id => @country
      else
        # @foods = Food.all
        render :action => 'edit'
      end
    end

    def country_param
      params.require(:country).permit(:name, :capital)
    end

    def delete
      Country.find(params[:id]).destroy
      redirect_to :action => 'list'
    end


end
