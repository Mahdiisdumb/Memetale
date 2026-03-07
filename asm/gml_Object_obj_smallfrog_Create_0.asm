.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
push.d 0.1
pop.v.d self.image_speed
pushbltn.v self.room
pushi.e 21
cmp.i.v EQ
bf [3]

:[1]
push.v self.x
pushi.e 300
cmp.i.v GT
bf [3]

:[2]
push.v self.x
pushi.e 400
cmp.i.v LT
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[end]