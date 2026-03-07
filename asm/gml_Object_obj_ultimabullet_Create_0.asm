.localvar 0 arguments

:[0]
push.d -0.1
pop.v.d self.friction
pushi.e -1
pop.v.i self.side
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 140
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
pushi.e 256
conv.i.v
call.i random(argc=1)
pop.v.v self.huer
pushi.e 255
conv.i.v
pushi.e 60
conv.i.v
push.v self.huer
call.i make_color_hsv(argc=3)
pop.v.v self.image_blend
pushi.e 578
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.trail
push.v self.depth
pushi.e 1
add.i.v
push.v self.trail
conv.v.i
pop.v.v [stacktop]self.depth
push.v self.image_blend
push.v self.trail
conv.v.i
pop.v.v [stacktop]self.image_blend

:[end]