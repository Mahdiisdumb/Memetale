.localvar 0 arguments

:[0]
push.v self.hspeed
neg.v
call.i action_set_hspeed(argc=1)
popz.v
push.v self.y
push.v self.xprevious
call.i action_move_to(argc=2)
popz.v

:[end]