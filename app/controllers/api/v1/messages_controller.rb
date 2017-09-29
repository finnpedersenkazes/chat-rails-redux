class Api::V1::MessagesController < ApplicationController
  def index
    @channel = Channel.find_by(name: params[:channel_id])
    @messages = @channel.messages
    @messages_hash = @messages.map do |message|
      {
        content: message.content,
        author: User.find(message.user_id).email,
        channel: @channel.name,
        created_at: message.created_at
        # created_at: message.created_at.strftime('%d/%m/%Y - %H:%M')
      }
    end
    # {
    #   content: "titi",
    #   user_id: 1,
    #   channel_id: 1
    # }
    # {
    #   content: "titi",
    #   author: "ed@lewagon.org",
    #   channel: "general"
    # }
    render json: @messages_hash # to avoid making the API View
  end

  def show
    @message = Message.find(params[:id])
    render json: @message
  end

  def create
  end
end
