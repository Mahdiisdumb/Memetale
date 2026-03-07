.localvar 0 arguments

:[0]
pushi.e 24
conv.i.v
call.i draw_set_circle_precision(argc=1)
popz.v
push.v self.offon
pushi.e 1
add.i.v
pop.v.v self.offon
push.v self.offon
pushi.e 2
cmp.i.v GT
bf [2]

:[1]
pushi.e 0
pop.v.i self.offon

:[2]
push.v self.offon
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[4]
push.v self.offon
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.i 4235519
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[6]
push.v self.offon
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[8]
push.v self.image_alpha
push.d 0.334
add.d.v
pop.v.v self.image_alpha
push.v self.image_alpha
pushi.e 6
cmp.i.v GT
bf [10]

:[9]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v

:[10]
push.v self.image_alpha
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 60
conv.i.v
push.v self.y
push.v self.x
call.i draw_circle(argc=4)
popz.v
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.image_alpha
pushi.e 8
push.v self.bonus
add.v.i
cmp.v.v GT
bf [end]

:[11]
pushi.e 1652
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]