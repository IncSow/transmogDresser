# frozen_string_literal: true

class BodyPartsController < ApplicationController
  before_action :set_body_part, only: %i[show edit update destroy]

  # GET /body_parts or /body_parts.json
  def index
    @body_parts = BodyPart.all
  end

  # GET /body_parts/1 or /body_parts/1.json
  def show; end

  # GET /body_parts/new
  def new
    @body_part = BodyPart.new
  end

  # GET /body_parts/1/edit
  def edit; end

  # POST /body_parts or /body_parts.json
  def create
    @body_part = BodyPart.new(body_part_params)

    respond_to do |format|
      if @body_part.save
        format.html { redirect_to body_part_url(@body_part), notice: 'Body part was successfully created.' }
        format.json { render :show, status: :created, location: @body_part }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @body_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /body_parts/1 or /body_parts/1.json
  def update
    respond_to do |format|
      if @body_part.update(body_part_params)
        format.html { redirect_to body_part_url(@body_part), notice: 'Body part was successfully updated.' }
        format.json { render :show, status: :ok, location: @body_part }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @body_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /body_parts/1 or /body_parts/1.json
  def destroy
    @body_part.destroy!

    respond_to do |format|
      format.html { redirect_to body_parts_url, notice: 'Body part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_body_part
    @body_part = BodyPart.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def body_part_params
    params.require(:body_part).permit(:name)
  end
end
