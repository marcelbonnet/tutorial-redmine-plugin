class CarrosController < ApplicationController

	def index
		@carros = Carro.all
	end

	# Lança ActionController::ParameterMissing se faltar algum dos params requeridos
	def params_requeridos
		params.require(:carro).permit(:modelo, :cor, :ano, :km)
	end

	# Exibe o objeto a partir da ID na view show.html.erb
	def show
		@carro = Carro.find(params[:id])
	end

	# Abre o formulário para criar um novo objeto na view new.html.erb
	def new
		@carro = Carro.new
	end

	def destroy
		# TODO
	end

	# Persite o objeto enviado via POST (o que foi criado na view new.html.erb)
	def create
		# https://api.rubyonrails.org/classes/ActionController/Parameters.html#method-c-new
		# Returns a new instance of ActionController::Parameters. 
		# Also, sets the permitted attribute to the default value 
		# of ActionController::Parameters.permit_all_parameters.
		@carro = Carro.new(params_requeridos)
		
		if @carro.save
                redirect_to action: "show", id: @carro
        else
                render action: "index"	# "new" se quiser manter no formulário para criar outro
        end
	end

	# Abre o formulário de edição para a ID na view edit.html.erb
	def edit
		@carro = Carro.find(params[:id])
		logger.info "============= ID do caralho " << params[:id]
		logger.info "============== CARRO: " << @carro.to_json
	end

	# Persite o objeto enviado via POST (o que foi editado na view edit.html.erb)
	def update
		@carro = Carro.find(params[:id])
		# https://api.rubyonrails.org/
		# Updates the attributes of the model from the passed-in hash and saves 
		# the record, all wrapped in a transaction. If the object is invalid, 
		# the saving will fail and false will be returned.
		# Also aliased as: update_attributes 
		if @carro.update_attributes(params_requeridos)
                redirect_to action: "show", id: @carro
        else
                render action: "edit"
        end
	end



  # APAGAR
  def testar
  	# c=Carro.find(1)
  	# c.km=c.km+10 #como chamar model testar
  	# c.save

  	# redirect_to action: "show", id: @restaurante
    #render action: "index"
    @carros = Carro.find(1)		
    # render action: "index"	#erro 500
    # redirect_to action: "carro#index"	#erro 500
    # redirect_to controller: carro, action: "index"	#erro 500
    #index	#não deu erro, mas não renderizou index
  end


  # APAGAR 
  def rodar
  	c=Carro.find(1)
  	#c.km=c.km+10 #como chamar model testar
  	#c.save
  end

end
