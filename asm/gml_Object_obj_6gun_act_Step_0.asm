.localvar 0 arguments

:[0]
push.v self.x
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
push.v self.hspeed
pushi.e 0
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[5]
push.v self.x
pushbltn.v self.room_width
cmp.v.v GT
bf [7]

:[6]
push.v self.hspeed
pushi.e 0
cmp.i.v GT
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
push.v self.hspeed
neg.v
pop.v.v self.hspeed

:[end]