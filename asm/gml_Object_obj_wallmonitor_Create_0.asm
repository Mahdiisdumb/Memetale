.localvar 0 arguments

:[0]
push.d 0.1
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.lit
pushi.e 1
pop.v.i self.active
pushbltn.v self.room
pushi.e 262
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.active

:[2]
pushi.e -5
pushi.e 485
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 0
pop.v.i self.active
pushbltn.v self.room
pushi.e 262
cmp.i.v EQ
bf [end]

:[4]
pushi.e 2
pop.v.i self.active

:[end]