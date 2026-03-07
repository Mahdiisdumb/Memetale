.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.image_speed
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushi.e 1265
conv.i.v
push.v self.ystart
pushi.e 50
add.i.v
push.v self.x
pushi.e 12
add.i.v
call.i scr_marker(argc=3)
pop.v.v self.hole
push.d 0.9
push.v self.hole
conv.v.i
pop.v.d [stacktop]self.image_alpha
push.i 600000
push.v self.hole
conv.v.i
pop.v.i [stacktop]self.depth

:[end]