class ConsolesController < ApplicationController
    def index
        consoles = Console.all
        render json: consoles
    end

    def show
        console = console.find(params[:id])
        render json: console
    end

end