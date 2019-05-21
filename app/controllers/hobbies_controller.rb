class HobbiesController < ApplicationController
  
  before_action :set_hobby, only: [:edit, :show, :update, :destroy]
  
  def index
    @hobbies = Hobby.all
  end

  def show
  end

  def new
    @hobby = Hobby.new
  end

  def create
    @hobby = user_session.current_user.hobbies.new(hobby_params)
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
    params.require(:hobby).permit(:name, :description)
  end 
  
  def set_hobby
    @hobby = current_user.hobbies.find(params[:id])
  end
end
