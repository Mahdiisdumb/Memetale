.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
push.v self.y
pushi.e 80
sub.i.v
pop.v.v self.y
push.v self.x
pushi.e 320
cmp.i.v GT
bf [2]

:[1]
push.v self.x
pushi.e 40
sub.i.v
pop.v.v self.x

:[2]
push.v self.x
pushi.e 320
cmp.i.v LT
bf [4]

:[3]
push.v self.x
pushi.e 40
add.i.v
pop.v.v self.x

:[4]
pushi.e 3
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.frozen
call.i scr_floweybodysave(argc=0)
popz.v

:[end]