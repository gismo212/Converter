require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
#require 'sqlite3'
#1 создать страницу авторизация,2 данные схранять в бд ,
#2.1  создать возможность просмотра базы данных через логин и пароль админа,2.2 сделать проверку если такой пользователь был (заполнение формы не нужно)
#3 оформить переход на на конвертер при авторизации 


get '/' do
	erb 'In order to use the currency converter, go to the converter tab!'
end


get'/Converter' do
   erb:Converter
end


