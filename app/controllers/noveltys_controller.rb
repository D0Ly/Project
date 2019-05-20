class NoveltysController < ApplicationController

http_basic_authenticate_with name: "admin", password: "mrpeople2248", except: [:index, :show]

	def index
		@noveltys = Novelty.paginate(page: params[:page], per_page: 10)
	end

	def show
		@novelty = Novelty.find(params[:id])
	end

	def new
		@novelty = Novelty.new
	end

	def edit
		@novelty = Novelty.find(params[:id])
	end

	def update
		@novelty = Novelty.find(params[:id])
		if @novelty.update_attributes(novelty_params)
			redirect_to @novelty
		else
			render :edit
		end
	end	

	def create 
		@novelty = Novelty.new(novelty_params)

		if @novelty.save
			redirect_to @novelty
		else
			render :new
		end
	end

	def destroy
    
   	 @novelty = Novelty.find(params[:id])
   	 @novelty.destroy

     redirect_to noveltys_path
	end
end

private

	def novelty_params
		params.require(:novelty).permit(:title, :text, :image)
	end