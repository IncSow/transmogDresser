# frozen_string_literal: true

class OutfitsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create destroy]
  before_action :set_outfit, only: %i[show edit update destroy]

  # GET /outfits or /outfits.json
  def index
    @outfits = Outfit.all
  end

  # GET /outfits/1 or /outfits/1.json
  def show; end

  # GET /outfits/new
  def new
    @outfit = Outfit.new
  end

  # GET /outfits/1/edit
  def edit; end

  # POST /outfits or /outfits.json
  def create
    @outfit = Outfit.new(outfit_params)
    @outfit.user = current_user
    respond_to do |format|
      if @outfit.save
        format.html { redirect_to outfit_url(@outfit), notice: 'Outfit was successfully created.' }
        format.json { render :show, status: :created, location: @outfit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @outfit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outfits/1 or /outfits/1.json
  def update
    respond_to do |format|
      if @outfit.update(outfit_params)
        format.html { redirect_to outfit_url(@outfit), notice: 'Outfit was successfully updated.' }
        format.json { render :show, status: :ok, location: @outfit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @outfit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outfits/1 or /outfits/1.json
  def destroy
    @outfit.destroy!

    respond_to do |format|
      format.html { redirect_to outfits_url, notice: 'Outfit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_outfit
    @outfit = Outfit.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def outfit_params
    params.require(:outfit).permit(:name, :visibility, :user_id)
  end
end
