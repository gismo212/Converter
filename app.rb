require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
#require 'sqlite3'
#1 ������� �������� �����������,2 ������ �������� � �� ,
#2.1  ������� ����������� ��������� ���� ������ ����� ����� � ������ ������,2.2 ������� �������� ���� ����� ������������ ��� (���������� ����� �� �����)
#3 �������� ������� �� �� ��������� ��� ����������� 


get '/' do
	erb 'In order to use the currency converter, go to the converter tab!'
end


get'/Converter' do
   erb:Converter
end


