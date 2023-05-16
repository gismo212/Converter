require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
#1 создать страницу авторизация,2 данные схранять в бд ,
#2.1  создать возможность просмотра базы данных через логин и пароль админа,2.2 сделать проверку если такой пользователь был (заполнение формы не нужно)
#3 оформить переход на на конвертер при авторизации 


# def get_db
# 	db=SQLite3::Database.new 'Users.db'
# 	db.results_as_hash=true
# 	return db
# end

# configure do
# 	db=get_db

# 	db.execute'CREATE TABLE IF NOT EXISTS "Users"
# 	 (
# 	 "Id" INTEGER PRIMARY KEY AUTOINCREMENT,
# 	  "Email" VARCHAR,
# 	   "Login" VARCHAR
# 	   )'
# end



get '/' do
	# 'In order to use the currency converter, go to the Form tab!'
	redirect '/Converter'
end


get '/Form' do
   erb :Form
end

# post '/Form' do
# 	@login=params[:login]
# 	@email=params[:mail]
# 	#erb "You login:#{@login}, You email:#{@email}"
# 	hh={:login=>'Enter you login',:mail=>'Enter you email'}

# 	hh.each do |key,value| 
# 			if params[key]==''
# 				@error=hh[key]
# 				return erb :Form
# 			end	
# 	end

# 	if @login=='admin' && @email=='bric98@mail.ru'
# 		erb:info	
# 	end	
# 	erb :Converter
# end
	
# 	get '/info' do
# 		db=get_db
# 		db.execute'select *from Users  id order by id',[id]
# 		erb:info
# 	end

# 	post '/info'  do
# 		db=get_db
# 		db.execute'insert into Users ("Email","Login") values(?,?)',[@email,@login]
# 		erb:info
# 	end


get '/Converter' do
	erb :Converter
end

post '/Converter' do
	well=params[:well]
	d=params[:usd]
	b=params[:brb]
	erb "well:#{well},usd:#{d},brb:#{b} "
end