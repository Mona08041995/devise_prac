class PostsController < ApplicationController
	def new
		@post = Post.new
  end

  def index
    @posts = Post.all
  end

	def show
	 @post = Post.find(params[:id])
	end

	def create
		@post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end

	def say_hello 
    "Hello World!"
  end
  private
	def post_params
		params.require(:post).permit(:title, :content,:author)
	end
end
