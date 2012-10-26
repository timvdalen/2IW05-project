module predsEventModule

open factsCore

pred openPoll(e, e' : Event){
	e.id = e'.id
	e.name = e'.name
	e.description = e'.description
	e.optionalMessage = e'.optionalMessage
	e.participants = e'.participants
	e.organizer = e'.organizer

	#e.responses = #e'.responses
	all r1 : e.responses |
		one r2 : Response |
			r1.user = r2.user and
			r1.present = r2.present and
			r1.event = e and
			r2.event = e'

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

	#e.responses = #e'.responses
	all r1 : e.responses |
		one r2 : Response |
			r1.user = r2.user and
			r1.present = r2.present and
			r1.event = e and
			r2.event = e'
	
	e.poll.closed = False
	e'.poll.closed = True

	e.poll.hidden = e'.poll.hidden
	e.poll.limit = e'.poll.limit
	e.poll.options = e'.poll.options
}

//addUser predicate is satisfied by the addResponse predicate and the fact participantsAreReponseTrue

pred addResponse(e, e' : Event, r : Response){
	e.id = e'.id
	e.name = e'.name
	e.description = e'.description
	e.optionalMessage = e'.optionalMessage
	e.organizer = e'.organizer

	e.poll.hidden = e'.poll.hidden
	e.poll.limit = e'.poll.limit
	e.poll.options = e'.poll.options

	//We tried doing a deep compare but because of the redundancies in our specification, we were not able to complete this predicate
}
