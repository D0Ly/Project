class PostsController < ApplicationController

http_basic_authenticate_with name: "admin", password: "mrpeople2248", except: [:index, :show]

	def index
		@posts = Post.paginate(page: params[:page], per_page: 5)
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(post_params)
			redirect_to @post
		else
			render :edit
		end
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
end

private

	def post_params
		params.require(:post).permit(:title, :text, :image)
	end
