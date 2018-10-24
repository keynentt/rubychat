class HomeController < ApplicationController
      def index
        @chats = Chat.all.order("created_at DESC")
      end
    end






