class SimcardController < ApplicationController
    #create simcard controller
    def create
        @simcard = Simcard.new(simcard_params)
        if @simcard.save
            render json: @simcard, status: :created
        else
            render json: @simcard.errors, status: :unprocessable_entity
        end
    end
    #update simcard controller
    def update
        @simcard = Simcard.find(params[:id])
        if @simcard.update(simcard_params)
            render json: @simcard
        else
            render json: @simcard.errors, status: :unprocessable_entity
        end
    end
    #delete simcard controller
    def destroy
        @simcard = Simcard.find(params[:id])
        @simcard.destroy
        head :no_content
    end
    #show simcard controller
    def show
        @simcard = Simcard.find(params[:id])
        render json: @simcard
    end
    #list simcard controller
    def index
        @simcards = Simcard.all
        render json: @simcards
    end
    private
    #simcard params
    def simcard_params
        params.require(:simcard).permit(:number, :consumption, :balance, :client_id)
    end
end
