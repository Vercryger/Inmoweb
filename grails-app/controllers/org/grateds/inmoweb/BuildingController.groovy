package org.grateds.inmoweb

import org.grateds.inmoweb.Building;

class BuildingController {
	static scaffold = Building

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
