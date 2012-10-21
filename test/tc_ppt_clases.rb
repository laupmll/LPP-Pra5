#tc_ppt_clases.rb

#require "../lib/ppt_clases"
require "ppt_clases"
require "test/unit"

class TestPiedraPapelTijera < Test::Unit::TestCase

	def setup
		tiradas = [:piedra, :papel, :tijeras]
		ganadoras = {:piedra => :papel,  :papel => :tijeras,  :tijeras => :piedra}
		@ppt = PiedraPapelTijeras.new()
	end

	def test_wrong_play
		assert_raise(TypeError) { @ppt.jugar('mesa') }		#comprueba que se lanzó un error de tipo 

	end

	def test_play
		@ppt.jugada_humano('piedra')
		score = []
		30.times do
			@ppt.aleatorio_maquina
			score.push @ppt.get_resultado()			#push mete al final del array (a la derecha)
		end
		assert(score.uniq.length >= 3, "score.uniq.length = #{score.uniq.length}, score.length = #{score.length}")
		#uniq elimina valores duplicados
		#puts score.join(' ')
	end

	#el humano jugará de forma aleatoria, y no solo piedra
	def test_variety
		answers = []
		puts "\n"
		30.times do
			#temp=@ppt.tiradas.sample
			#@ppt.jugar(temp)
			@ppt.jugar_aleatorio_todo()
			answers.push @ppt.get_resultado()
		end
		assert(answers.uniq.length >= 3, "answers.uniq.length = #{answers.uniq.length}, answers.length = #{answers.length}")
		#puts answers.join(' ')
	end
end
