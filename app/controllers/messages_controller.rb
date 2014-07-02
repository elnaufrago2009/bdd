class MessagesController < InheritedResources::Base
	def permitted_params
    	params.permit!
  	end
end
