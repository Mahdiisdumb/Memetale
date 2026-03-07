.localvar 0 arguments

:[0]
push.v self.yprevious
push.v self.xprevious
call.i action_move_to(argc=2)
popz.v

:[end]