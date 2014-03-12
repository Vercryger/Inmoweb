package org.grateds.inmoweb

import org.grateds.inmoweb.RealEstate;

class RealEstateController {
	static scaffold = RealEstate
//    def index() { }
	
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
