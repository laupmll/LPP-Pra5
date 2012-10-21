#main_ppt.rb

#require "../lib/ppt_clases"
require "ppt_clases"

tiradas = [:piedra, :papel, :tijeras]
ganadoras = {:piedra => :papel, :papel => :tijeras, :tijeras => :piedra}
#resultados =
#humano =

if ARGV.size == 0 
	raise ScriptError, "Debe ejecutar '#{$0}' seguido de uno de los siguientes: '#{tiradas.join(', ')}'"
	#puts "Elige uno de #{tiro.join(', ')}: "
	#player_throw = gets.chomp.to_sym		#gets:lee ,  chomp: quita /r/n ,  to_sym: pasa a símbolo :... 
else 
	player_throw = (ARGV.shift || '').to_sym	#shift: coge el primer elemento de argv y lo elimina de argv
	#player_throw = (ARGV.shift).to_sym
	#puts "player_throw: #{player_throw}."
end

raise TypeError, 			#Lanza una excepción de tipo TypeError
	#join une en una cadena los elementos del array
	"Debe ejecutar: ''#{$0}'' seguido de uno de los siguientes: '#{tiradas.join(', ')}'" 				     unless tiradas.include? player_throw	# true si tiro incluye player_throw

ppt = PiedraPapelTijeras.new()
ppt.jugar(player_throw)
#ppt.jugar('piedra')



