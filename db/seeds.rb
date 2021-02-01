# Data initialization here
require_relative '../config/environment.rb'

require "json"

User.destroy_all
Post.destroy_all

json_data = File.read("./db/mock_data.json")
json_to_hash = JSON.parse(json_data)
json_to_hash.map{|data|
    # Creates User object
    user = User.create
    user.first_name = data["first_name"]
    user.last_name = data["last_name"]
    user.age = data["age"]
    user.location = data["city"] + ", " + data["state"]
    user.date_of_birth = data["date_of_birth"]
    user.mobile = data["mobile"]
    user.email = data["email"]
    
    # Creates Post object
    post = Post.create
    post.title = data["title"]
    post.message = data["message"]
}