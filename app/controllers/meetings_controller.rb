class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
  end

  def create
    @meeting = Meeting.create(
                              date: params[:time]
                              )
    render :show
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

  def update
    @meeting = Meeting.find(params[:id])
    @meeting = Meeting.patch(date: params[:time])
  end

  def delete
    @meeting = Meeting.find(params[:id])
    @meeting = Meeting.destroy(params[:id])
  end
end
