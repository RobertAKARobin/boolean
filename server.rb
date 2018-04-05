require "sinatra"
require "sinatra/reloader"

Questions = [
	"Is the sky blue?",
	"Do you live in the USA?",
	"Are you male?",
	"Are you female?"
]

get "/" do
	erb :index
end
