module userAgreedModule

open factsCore


pred userAgreed(v, v' : Vote, u : User){
	v.dateTimeSlot = v'.dateTimeSlot
	all user : v.usersAgreed |
		user != u
	v'.usersAgreed = v.usersAgreed + u
}

run userAgreed
