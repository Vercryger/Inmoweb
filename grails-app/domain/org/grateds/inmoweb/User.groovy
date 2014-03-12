package org.grateds.inmoweb

class User {
	
	Integer id
	Integer version
	String first_name
	String last_name
	String username
	String e_mail
	String password
	
	static hasOne = [adress : Adress]
	static hasMany = [buildings : Building, realEstates : RealEstate]
	
    static constraints = {
		e_mail blank: false, unique: true, email: true
    	username blank: false, unique: true
		password blank: false, password: true, size: 5..15
	}
	
	String toString() {return username}
}
