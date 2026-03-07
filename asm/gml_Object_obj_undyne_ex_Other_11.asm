.localvar 0 arguments

:[0]
push.v self.green
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 10
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
push.v self.mypart1
conv.v.i
pushenv [3]

:[2]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[3]
popenv [2]
pushi.e 2
pop.v.i self.green

:[end]