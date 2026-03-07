.localvar 0 arguments

:[0]
push.v self.fire
push.v self.maxfire
cmp.v.v LT
bf [2]

:[1]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[2]
push.v self.fire
pushi.e 1
add.i.v
pop.v.v self.fire

:[end]