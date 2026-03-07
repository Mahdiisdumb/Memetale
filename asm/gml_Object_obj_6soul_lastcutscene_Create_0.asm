.localvar 0 arguments

:[0]
pushbltn.v self.room_width
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.x
pushbltn.v self.room_height
pushi.e 2
conv.i.d
div.d.v
pushi.e 60
sub.i.v
pop.v.v self.y
pushi.e 170
pop.v.i self.radius
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.sinerspeed
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.counter
pushi.e 0
pop.v.i self.con

:[end]