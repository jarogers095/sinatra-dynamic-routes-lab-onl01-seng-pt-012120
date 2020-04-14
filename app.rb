require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    params[:name].reverse
  end
  
  get "/square/:number" do 
    "#{params[:number].to_i * params[:number].to_i}"
  end
  
  get "/say/:number/:phrase" do 
    sentence = ""
    params[:number].to_i.times do
      sentence << "#{params[:phrase]} "
    end
    sentence
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    params.map do |k, v|
      v
    end.join(" ") << "."
  end
  
  get "/:operation/:number1/:number2" do 
    case params[:operation]
    when "add"
      return
    when "subtract"
        
  end
end