require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
#require 'sqlite3'
#1 создать страницу авторизация,2 данные схранять в бд ,
#2.1  создать возможность просмотра базы данных через логин и пароль админа,2.2 сделать проверку если такой пользователь был (заполнение формы не нужно)
#3 оформить переход на на конвертер при авторизации 


get '/' do
	erb 'In order to use the currency converter, go to the Form tab!'
end


get '/Form' do
   erb :Form
end

post '/Form' do
	@login=params[:login]
	@email=params[:mail]
	#erb "You login:#{@login}, You email:#{@email}"
	hh={:login=>'Enter you login',:mail=>'Enter you email'}

	hh.each do |key,value| 
			if params[key]==''
				@error=hh[key]
				return erb :Form
			end	
	end

	if @login=='admin' && @email=='bric98@mail.ru'
		erb:info	
	end	
	erb :Converter

end
	
	get '/info' do
		erb:info5
	end


get '/Converter' do
	erb :Converter
end

post 'Converter' do
	erb :Converter
end