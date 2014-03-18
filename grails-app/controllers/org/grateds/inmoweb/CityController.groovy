package org.grateds.inmoweb

import org.grateds.inmoweb.City;

class CityController {
	static scaffold = City
	
	def beforeInterceptor = [action:this.&auth]
	
	def index() {
		redirect(action: "list")
	}
	
	def auth() {
		if(!session.user) {
			redirect(controller:"User", action:"login")
			return false
		}
	}
}
