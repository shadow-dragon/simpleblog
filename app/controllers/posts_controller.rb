class PostsController < ApplicationController
    def index
      @posts = Post.all
    end

    def show
      @post = Post.find(patams[:id])
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
