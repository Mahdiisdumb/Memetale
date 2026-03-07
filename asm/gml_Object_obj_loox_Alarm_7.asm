.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.image_index
push.d 0.5
pop.v.d self.image_speed
push.v self.mercymod
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
pop.v.i self.image_speed

:[2]
pushi.e 30
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
push.v self.mercymod
pushi.e 0
cmp.i.v LT
bf [end]

:[3]
pushi.e 20
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm

:[end]