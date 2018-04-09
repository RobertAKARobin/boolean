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

get "/admin" do
	erb :admin, layout: false
end

post "/questions" do
	revised_questions = params[:questions].split(/\s*[\n\r]\s*/)
	Questions.clear
	Questions.concat revised_questions
	redirect "/admin"
end
