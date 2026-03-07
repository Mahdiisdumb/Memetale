.localvar 0 arguments

:[0]
push.v self.x
pushbltn.v self.room_width
cmp.v.v GT
bf [end]

:[1]
push.v self.xstart
pushi.e 60
sub.i.v
pop.v.v self.x

:[end]