require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
#require 'sqlite3'
#1 ������� �������� �����������,2 ������ �������� � �� ,
#2.1  ������� ����������� ��������� ���� ������ ����� ����� � ������ ������,2.2 ������� �������� ���� ����� ������������ ��� (���������� ����� �� �����)
#3 �������� ������� �� �� ��������� ��� ����������� 


get '/' do
	erb 'In order to use the currency converter, go to the Form tab!'
end


get '/Form' do
   erb :Form
end

post '/Form' do
	@login=params[:login]
	@email=params[:mail]
	erb "You login:#{@login}, You email:#{@email}"
	hh={:login=>'Enter you login',:mail=>'Enter you email'}

	hh.each do |key,value| 
			if params[key]==''
				@error=hh[key]
				return erb:Form
			end	
	end

end

get '/Converter' do
	erb :Converter
end

post 'Converter' do
	erb:Converter
end