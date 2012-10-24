module Facts

open UserEventRepsonseCore

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
