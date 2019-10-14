# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

# página inicial do plugin
root 'carros#index'

# ################
# Objeto Carro
# ################
# Pelos padrões W3C: 
# GET deve levar a uma Página HTML
# POST deve enviar dados para uma operação de persistência (criar novo, atualizar, deletear)
# 	A rigor: usa-se POST para criar novo. UPDATE para atualizar. DELETE para deletar.
# get 	'carros'			, :to => 'carros#index'
# get 	'carros/new'		, :to => 'carros#new'	# /new deve vir antes /:id, ou irá para o método errado no controller (carros/new será despachado para #show)
# get 	'carros/:id'		, :to => 'carros#show'
# get 	'carros/:id/edit'	, :to => 'carros#edit'
# post 	'carros/:id/update'	, :to => 'carros#update'
# # get 	'carros/new'		, :to => 'carros#new'	#está encaminhando para #show usando string "new" como find.(id)
# # get 	'testar'		, :to => 'carros#new'	# funcionou: http://10.41.10.52:3000/testar
# post 	'carros/create'		, :to => 'carros#create'

match 'carros' => 'carros#index', via: 'get'
# mapeia verbos HTTP para actions do controller: (new, edit, show, ...)
resources :carros

#get 'inicio', :to => 'carro#testar'
#post 'post/:id/vote', :to => 'carro#rodar'