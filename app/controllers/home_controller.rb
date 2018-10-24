class HomeController < ApplicationController
      def index
      	@limit = 10
		offset = params[:offset].to_i * @limit 
		
        @chats = Chat.all.order("created_at DESC").limit(5)
      end
    end






