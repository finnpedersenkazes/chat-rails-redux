class ChannelsController < ApplicationController
  def show
    @channels = Channel.all
    if params[:id].blank?
      redirect_to channel_path(Channel.first.name)
    else
      @channel = Channel.find_by(name: params[:id])
    end
  end
end

