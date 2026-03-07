.localvar 0 arguments

:[0]
push.v self.y
push.v self.goal
cmp.v.v GT
bf [2]

:[1]
pushi.e 1
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
push.v self.dont
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 40
sub.i.v
cmp.v.v LT
bf [5]

:[4]
push.v self.x
pushi.e 361
add.i.v
pop.v.v self.x

:[5]
push.v self.x
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
pushi.e 360
add.i.v
cmp.v.v GT
bf [end]

:[6]
push.v self.x
pushi.e 361
sub.i.v
pop.v.v self.x

:[end]