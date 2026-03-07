.localvar 0 arguments

:[0]
push.d 0.5
pop.v.d self.image_speed
push.v self.mercymod
pushi.e 0
cmp.i.v LT
bf [2]

:[1]
pushi.e 10
pushi.e -1
pushi.e 8
pop.v.i [array]self.alarm
pushi.e 30
pushi.e 40
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 7
pop.v.v [array]self.alarm
b [end]

:[2]
push.d 0.1
pop.v.d self.image_speed

:[end]