.localvar 0 arguments

:[0]
push.v self.x
pushbltn.v self.room_width
pushi.e 20
add.i.v
cmp.v.v GT
bf [end]

:[1]
pushi.e -50
pop.v.i self.x

:[end]