 class ChatController < ApplicationController
      def create
      end

      def store
        # # upload image to cloudinary
        # @image = Cloudinary::Uploader.upload(params[:media])
        # create a new post object and save to db
        @chat = Chat.new({:message => params[:message]})
        if @chat.save
          # broadcasting posts using pusher
          Pusher.trigger('posts-channel','new-post', {
            id: @chat.id,
            message: @chat.message
          })
     
      end


        redirect_to('/')
    end
    end