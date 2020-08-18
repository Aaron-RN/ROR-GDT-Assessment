# frozen_string_literal: true

# LocalMusician Model Controller
class MusiciansController < ApplicationController
  before_action :set_musician, only: %i[update]

  def index
    render json: {
      musicians: LocalMusician.all
    }
  end

  def create
    musician = LocalMusician.new(musician_params)

    if musician.save
      render json: {
        status: :created,
        musicians: LocalMusician.all
      }
    else
      render json: { status: 'ERROR', message: 'Artist could not be created!',
                     error: musician.errors.full_messages }, status: 500
    end
  end

  def update
    if @musician.update(musician_params)
      render json: {
        status: :ok,
        musicians: LocalMusician.all
      }
    else
      render json: { status: 'ERROR',
                     message: 'Artist could not be updated!',
                     error: @musician.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_musician
    @musician = LocalMusician.find(params[:id])
  end

  def musician_params
    params.require(:musician).permit(:name, :age, :active)
  end
end
