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
end

get '/Converter' do
	erb :Converter
end

