#Rakefile

task :default => :test

desc "Ejecuta con ruby main_ppt.rb pasandole el parametro tijeras"
task :tijeras do
  sh "ruby -Ilib bin/main_ppt.rb tijeras"
end

#Se debe llamar a este metodo de la siguiente forma: rake t[piedra] o rake t[papel] o rake t[tijeras]
desc "Run ppt.rb with ruby pasandole por parametro el nombre piedra, papel o tijeras"
task :t, :test_name do |t, args|
  test_name = args[:test_name]
  #puts "test_name: #{test_name}\n"
  sh "ruby -Ilib bin/main_ppt.rb #{test_name}"
end

desc "Ejecuta los TestCase"
task :test do
  sh "ruby -Ilib test/tc_ppt_clases.rb"
end


