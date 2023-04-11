require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sqlite3'
#1 ������� �������� �����������,2 ������ �������� � �� ,
#2.1  ������� ����������� ��������� ���� ������ ����� ����� � ������ ������,2.2 ������� �������� ���� ����� ������������ ��� (���������� ����� �� �����)
#3 �������� ������� �� �� ��������� ��� ����������� 


def get_db
	db=SQLite3::Database.new 'Users.db'
	db.results_as_hash=true
	return db
end

configure do
	db=get_db

	db.execute'CREATE TABLE IF NOT EXISTS "Users"
	 (
	 "Id" INTEGER PRIMARY KEY AUTOINCREMENT,
	  "Email" VARCHAR,
	   "Login" VARCHAR
	   )'
end



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
		db=get_db
		db.execute'select *from Users  id order by id',[id]
		erb:info
	end

	post '/info'  do
		db=get_db
		db.execute'insert into Users ("Email","Login") values(?,?)',[@email,@login]
		erb:info
	end


get '/Converter' do
	erb :Converter
end

post 'Converter' do
	erb :Converter
end