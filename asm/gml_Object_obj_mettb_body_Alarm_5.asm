.localvar 0 arguments

:[0]
push.v self.dancewait
pushi.e -1
pushi.e 5
pop.v.v [array]self.alarm
pushglb.v global.myfight
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
pushglb.v global.mnfight
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.dance
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[end]