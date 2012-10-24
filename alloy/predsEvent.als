module predsEvent

open factsCore

pred openPoll(e, e' : Event){
	e.id = e'.id
	e.name = e'.name
	e.description = e'.description
	e.optionalMessage = e'.optionalMessage
	e.participants = e'.participants
	e.organizer = e'.organizer
	//e.responses = e'.responses
	/*
		TODO: Find out why this makes the predicate inconsistent
		I think it has to do with the immutability of everything in Alloy
		but I don't see why this has to change at all since even if
		we generate an instance like this, the two different responses
		that are given are essentially equivalent 
		(r1.user = r2.user and r1.event = r2.event and r1.present = r2.present).
	*/

	e.poll.closed = True
	e'.poll.closed = False

	e.poll.hidden = e'.poll.hidden
	e.poll.limit = e'.poll.limit
	e.poll.options = e'.poll.options
}

pred closePoll(e, e' : Event){
	e.id = e'.id
	e.name = e'.name
	e.description = e'.description
	e.optionalMessage = e'.optionalMessage
	e.participants = e'.participants
	e.organizer = e'.organizer
	
	e.poll.closed = False
	e'.poll.closed = True

	e.poll.hidden = e'.poll.hidden
	e.poll.limit = e'.poll.limit
	e.poll.options = e'.poll.options
}

run closePoll
