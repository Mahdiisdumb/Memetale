.localvar 0 arguments

:[0]
pushi.e 1159
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e -5
pushi.e 86
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v 1159.boxactive
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [end]

:[5]
push.v self.statuetimer
pushi.e 1
add.i.v
pop.v.v self.statuetimer
push.v self.statuetimer
pushi.e 450
cmp.i.v GTE
bf [end]

:[6]
push.v self.alpha_x
push.d 0.005
add.d.v
pop.v.v self.alpha_x
push.v self.alpha_x
pop.v.v self.max_alpha
push.v self.max_alpha
pushi.e 1
cmp.i.v GT
bf [8]

:[7]
pushi.e 1
pop.v.i self.max_alpha

:[8]
push.v self.statuetimer
pushi.e 60
conv.i.d
div.d.v
call.i sin(argc=1)
call.i abs(argc=1)
push.v self.max_alpha
mul.v.v
push.d 0.8
mul.d.v
pushi.e 100
push.v 1159.disto
sub.v.i
pushi.e 100
conv.i.d
div.d.v
mul.v.v
pop.v.v self.image_alpha
push.v self.xstart
push.v self.statuetimer
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
add.v.v
pop.v.v self.x
push.v self.ystart
push.v self.statuetimer
pushi.e 33
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
add.v.v
pop.v.v self.y
push.d 0.06
pop.v.d self.image_speed

:[end]