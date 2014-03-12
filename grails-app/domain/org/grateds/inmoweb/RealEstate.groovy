package org.grateds.inmoweb

class RealEstate {
	
	Integer id
	Integer version
	String name
	Integer phone
	String e_mail
	String web_site
	
	static hasOne = [adress : Adress]
	static belongsTo = [user : User, city : City]
	
    static constraints = {
		name blank: false, unique: true
		phone unique: true
		e_mail blank: false, unique: true, email: true
		web_site unique: true
    }
	
	String toString() {return name}
}
