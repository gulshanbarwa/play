class MaxxController < ApplicationController
	def new
		@webb = Webb.new
	end
	def create
		@webb = Webb.new(webb_params)
		if @webb.save
			@email = @webb.email
			@message = @webb.message
			@subject = @webb.subject
			PostmailerMailer.post_created(@message,@email,@subject).deliver_now
			redirect_to detail_path
		end
	end
	def show
		@webb = Webb.all
	end

	def connect
		@mail = "gulshanconnection@gmail.com"
		@email = Webb.last.email
		@subject = Webb.last.subject
		@message = Webb.last.message

	end


	private
    def webb_params
    	params.require(:webb).permit(:email, :message, :subject)
    end
end