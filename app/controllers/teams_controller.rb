class TeamsController < InheritedResources::Base
	def create
    	create!( notice: "El registro Team se ha creado con exito."){ teams_path }
  	end

  	def update
  		update!( notice: 'El Team se ha actualizado correctamente.')
  	end

  	def destroy
  		destroy!( notice: 'El team ha sido eliminado correctamente.' )
  	end

  	def permitted_params
    	params.permit!
  	end
end
