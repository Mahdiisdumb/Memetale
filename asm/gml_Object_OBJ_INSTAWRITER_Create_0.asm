.localvar 0 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
pushi.e -1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.v self.originalstring
call.i string_length(argc=1)
pop.v.v self.stringpos

:[end]