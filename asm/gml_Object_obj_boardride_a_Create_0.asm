.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 108
cmp.i.v GT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e 0
pop.v.i self.interacted
pushi.e 1
pop.v.i self.active
pushi.e 1000
pop.v.i self.finalx

:[end]