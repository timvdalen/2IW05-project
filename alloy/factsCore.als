module Facts

open Core

fact oneResponsePerEvent{
	all r, r' : Response |
		r.event = r'.event and r.user = r'.user implies
			r = r'
}

fact participantsAreReponseTrue{
	all e : Event |
		e.participants = { u : User |
			some r : Response | r.user = u and r.event = e and r.present = True }
}

fact onlyOneOrganizer{
	all u, u' : User |
		all e : u.organizedEvents |
			e in u'.organizedEvents implies
				u = u'
}

fact organizerIsUserThatOrganizes{
	all e : Event |
		e.organizer = { u : User | e in u.organizedEvents }
}

fact eventRepsonsesAreAllResponsesForEvent{
	all e : Event |
		e.responses = { r : Response | r.event = e }
}

fact userResponsesAreAllResponsesForUser{
	all u : User |
		u.responses = { r : Response | r.user = u }
}

fact userCastVotesAreAllVotesUserCast{
	all u : User |
		u.castVotes = { v : Vote | u in v.usersAgreed }
}
