.localvar 0 arguments

:[0]
push.v self.x
pushi.e 10
cmp.i.v LT
bf [2]

:[1]
pushi.e 10
pop.v.i self.x

:[2]
push.v self.x
pushbltn.v self.room_width
pushi.e 10
sub.i.v
cmp.v.v GT
bf [4]

:[3]
pushbltn.v self.room_width
pushi.e 10
sub.i.v
pop.v.v self.x

:[4]
push.v self.y
pushbltn.v self.room_height
pushi.e 10
sub.i.v
cmp.v.v GT
bf [6]

:[5]
pushbltn.v self.room_height
pushi.e 10
sub.i.v
pop.v.v self.y

:[6]
push.v self.y
pushi.e 10
cmp.i.v LT
bf [end]

:[7]
pushi.e 10
pop.v.i self.y

:[end]