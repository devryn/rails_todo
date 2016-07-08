class ListsController < ApplicationController

  def index
    render json: List.all, status: 200
  end

  def show
    if List.exists?(params[:id])
      render json: List.find(params[:id]), status: 200
    else
      render json: { message: "List not found." }, status: 404
    end
  end

  def create
    binding.pry
  end

  def update
  end

  def destroy
  end
end
