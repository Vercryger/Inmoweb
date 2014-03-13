package org.grateds.inmoweb

import org.grateds.inmoweb.User;

class UserController {
	static scaffold = User
	
    def index() { 
		def users = User.findAll(order: "asc")
		return [users : users]
	}
	
	def list() {
		redirect(action: "index", params: params)
	}
	
	def login = {}
	
	def authenticate = {
		def user = User.findByUsernameAndPassword(params.username, params.password)
		if(user){
			session.user = user
			redirect(url: "http://localhost:8080/inmoweb/")
			flash.message = "Hello ${user.first_name}!"
			
		}else{
		flash.message = "Sorry, ${params.first_name}. Please try again."
		redirect(action:"login")
		}
	}
	
	def logout = {
		flash.message = "Goodbye ${session.user.first_name}"
		session.user = null
		redirect(action:"login")
	}
}
