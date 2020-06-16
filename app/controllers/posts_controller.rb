class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    private
     def post_params
      params.require(:post).permit(:title, :text, :img)
     end
end
