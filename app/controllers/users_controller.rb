class UsersController < ApplicationController
  before_action :authenticate_user!

  # GET /users/dashboard
  def dashboard
    @user = current_user
    @latest_clothes = @user.pieces.last(5)
    @latest_outfits = @user.outfits.last(5)
    @outfits_amount = @user.outfits.size
    @pieces_amount = @user.pieces.size
  end

end
