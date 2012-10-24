module predsPollModule

open factsCore

pred addVote(p, p' : Poll, v : Vote){
	p.hidden = p'.hidden
	p.limit = p'.limit
	p.closed = p'.closed
	p.options = p'.options
	
	not v in p.votes

	p'.votes = p.votes + v
}

pred changeVote(p, p' : Poll, v, v' : Vote){
	p.hidden = p'.hidden
	p.limit = p'.limit
	p.closed = p'.closed
	p.options = p'.options

	v.usersAgreed = v'.usersAgreed
	v.dateTimeSlot = v'.dateTimeSlot

	v in p.votes
	not v in p'.votes

	not v' in p.votes
	v' in p'.votes

	p.votes - v = p'.votes - v'
}

pred removeVote(p, p' : Poll, v : Vote){
	p.hidden = p'.hidden
	p.limit = p'.limit
	p.closed = p'.closed
	p.options = p'.options
	
	v in p.votes

	p'.votes = p.votes - v
}

//pred castVote(Vote, User) is predUserAgreed(User) on that Vote

run removeVote
