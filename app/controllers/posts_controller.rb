class PostsController < ApplicationController

    def index
        @post = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        post = Post.new(post_params)
        if post.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end
    
      private
      def post_params
        params.require(:post).permit(:title, :about)
      end

end
