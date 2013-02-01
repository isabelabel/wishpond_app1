class BrowseController < ApplicationController
	require 'meu_teste'
	
	def home
		@title = "Wishpond"
	end

	def about
		@t = MeuTeste.instance
	end

	def help
	
	end

end