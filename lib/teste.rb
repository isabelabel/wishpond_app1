require_relative 'meu_teste'

t = MeuTeste.instance

puts t.read_campaings[0][:name]

t2 = MeuTeste.instance
puts t2.read_campaings[0][:name]