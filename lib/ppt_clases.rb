#ppt_clases.rb

class PiedraPapelTijeras
	attr_accessor :tiradas, :ganadoras, :resultados
	attr_reader :humano, :maquina, :resultado

	def initialize
		@tiradas = [:piedra, :papel, :tijeras]
		@ganadoras = {:piedra => :papel, :papel => :tijeras, :tijeras => :piedra}	
		@resultados = [:Ganas, :Pierdes, :Empatas]
	end

	def aleatorio_humano
		@humano = @tiradas.sample				#devuelve un valor aleatorio(random) de tiro
		#puts "humano: #{@humano}\n"
	end

	def aleatorio_maquina
		@maquina = @tiradas.sample				#devuelve un valor aleatorio(random) de tiro
		#puts "maquina: #{@maquina}\n"
	end

	def jugada_humano(jugada)
		@humano = jugada.to_sym
		#puts "humano: #{@humano}\n"

		raise TypeError, 
			#"Debe ejecutar: '#{$0}' seguido de uno de los siguientes: '#{@tiradas.join(', ')}'"
			"Debe ser una jugada de las siguientes: '#{@tiradas.join(', ')}'"                                                    unless @tiradas.include? @humano		# true si tiradas incluye humano
	end

	def jugar(jugada)
		jugada_humano(jugada)
		aleatorio_maquina
		get_resultado
	end

	def jugar_aleatorio_todo
		aleatorio_humano
		aleatorio_maquina
		get_resultado
	end

	def get_resultado
		puts "humano: #{@humano}\n"
		puts "maquina: #{@maquina}\n"
		if (@humano == @maquina)
			#answer = "Hay un empate"
			@resultado = :Empatas
		elsif (@maquina == ganadoras[@humano])
			#answer = "Pierdes. #{@maquina} gana a #{@humano}"
			@resultado = :Pierdes
		else
			#answer = "Ganas. #{@humano} gana a #{@maquina}"
			@resultado = :Ganas
		end
		#puts answer
		puts "#{@resultado}\n\n"
		return @resultado
	end
end

