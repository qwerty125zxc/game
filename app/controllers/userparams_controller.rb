class UserparamsController < ApplicationController
  before_action :authenticate_user!
  def new
    @userparam = Userparam.new
  end

  def create
    @userparam = current_user.build_userparam(userparam_params)
    if @userparam.save
      redirect_to userparam_path(@userparam.id)
      else render 'new'
    end
  end

  def edit
    @userparam = current_user.userparam
  end

  def update
    @userparam = Userparam.find_by(user_id: current_user.id)
    if @userparam.update(userparam_params)
       redirect_to userparam_path(@userparam.id)
     else render 'edit'
    end
  end

  def show
    @userparam = current_user.userparam
  end

  private
  def userparam_params
    params.require(:userparam).permit(:user_id, :nickname, :age, :avatar)
  end
end
