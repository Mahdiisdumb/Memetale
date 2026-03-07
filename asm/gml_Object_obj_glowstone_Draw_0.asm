.localvar 0 arguments

:[0]
pushi.e 1100
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 1100.glowamt
pop.v.v self.gl
b [3]

:[2]
pushi.e 0
pop.v.i self.gl

:[3]
pushi.e 12
conv.i.v
call.i draw_set_circle_precision(argc=1)
popz.v
push.v self.gl
push.d 0.1
cmp.d.v GT
bf [5]

:[4]
push.v self.gl
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 6
conv.i.d
div.d.v
add.v.v
pop.v.v self.gl2
push.v 1100.glowamt
pop.v.v self.image_alpha
push.i 16711935
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.gl2
pushi.e 3
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.gl2
pushi.e 15
mul.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i draw_circle(argc=4)
popz.v
push.v self.gl2
pushi.e 3
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.gl2
pushi.e 20
mul.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i draw_circle(argc=4)
popz.v
push.v self.gl2
pushi.e 3
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.gl2
pushi.e 25
mul.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i draw_circle(argc=4)
popz.v
push.v self.gl2
pushi.e 3
conv.i.d
div.d.v
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v self.gl2
pushi.e 30
mul.i.v
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i draw_circle(argc=4)
popz.v

:[5]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.gl
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v

:[end]