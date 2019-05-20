class HobbiesController < ApplicationController
  before_action :set_hobby, only: [:edit, :show, :update, :destroy]
  
  def index
    @hobbies = Hobbies.all
  end

  def show
  end

  def new
    @hobby = Hobby.new
  end

  def create
    @hobby = Hobby.new(hobby_params)
    if @hobby.save
      redirect_to hobbies_path
    else 
      render :new
    end
  end 

  def edit
  end

  def update
    if @hobby.update(hobby_params)
      redirect_to @hobby
    else 
      render :edit
    end
  end

  def destroy
    @hobby.destroy
    redirect_to hobbies_path
  end 

  private
  def hobby_params
    @hobby = current_user.hobbies.find(params[:id])
  end 

  def set_hobby
    params.require(:hobby).permit(:name, :description)
  end
end
