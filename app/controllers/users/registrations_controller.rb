class Users::RegistrationsController < Devise::RegistrationsController 
	before_filter :check_permissions, :only => [ :new, :create, :cancel ] 
	skip_before_filter :require_no_authentication 

	def check_permissions
		#authorize! :create, resource
	end

	def index 
		@users = User.all
	end 

	def show
	end

	def destroy
		@user = User.find(user_params[:id])		
		@user.destroy

		respond_to do |format|
	      format.html { redirect_to users_url, notice: 'Se ha eliminado el Usuario.' }
	      format.json { head :no_content }
	    end		
	end
end 