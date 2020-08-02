class PostsController < ApplicationController
    def index
    
    end

    def new

    end

    def create
        #render plain: params[:post]
        @post = Post.new(post_params)
        @post.save
	    redirect _to @post
    end 


    private def post_params
        params.require(:post).permit(:title, :body)
    end

end
