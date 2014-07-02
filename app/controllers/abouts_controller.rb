class AboutsController < InheritedResources::Base

	def create
    	create!( notice: "El registro About se ha creado con exito."){ abouts_path }
  	end

  	def permitted_params
    	params.permit!
  	end
end
