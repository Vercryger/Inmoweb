package org.grateds.inmoweb

class AdressController {
	static scaffold = Adress
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
