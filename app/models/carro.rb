class Carro < ActiveRecord::Base
	def rodar(km)
		increment(km, 100)
	end	

	def testar
		#increment(km, Random.rand(7...300))

	end
end
