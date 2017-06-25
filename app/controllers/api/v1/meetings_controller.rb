class Api::V1::MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
  end

  def create
    @meeting = Meeting.new(
                              date: params[:time], id: params[:id]
                              )
    if @meeting.save
      render 'show.json.jbuilder'
    else 
      render json: { errors: @meetings.errors.full_messages }, status: 422
  end
  # def show
  #   @meeting = Meeting.find(params[:id])
  # end

  # def update
  #   @meeting = Meeting.find(params[:id])
  #   @meeting = Meeting.patch(date: params[:time])
  # end

  # def delete
  #   @meeting = Meeting.find(params[:id])
  #   @meeting = Meeting.destroy(params[:id])
  end
end
