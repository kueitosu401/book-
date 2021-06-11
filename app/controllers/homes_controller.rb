class HomesController < ApplicationController
  def index
  end

  def show
    @top = resources :homes
  end

  def new
  end

  def edit
  end
end
