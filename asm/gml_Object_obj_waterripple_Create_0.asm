.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.x1
pushi.e 0
pop.v.i self.x2
pushi.e 0
pop.v.i self.y1
pushi.e 0
pop.v.i self.y2
pushi.e 0
pop.v.i self.mp
pushbltn.v self.room
pushi.e 84
cmp.i.v EQ
bf [2]

:[1]
pushi.e 220
pop.v.i self.x1
pushi.e 60
pop.v.i self.y1
pushi.e 380
pop.v.i self.x2
pushi.e 180
pop.v.i self.y2

:[2]
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [4]

:[3]
pushi.e 80
pop.v.i self.x1
pushi.e 120
pop.v.i self.y1
pushi.e 260
pop.v.i self.x2
pushi.e 180
pop.v.i self.y2

:[4]
pushi.e 0
pop.v.i self.image_speed

:[end]