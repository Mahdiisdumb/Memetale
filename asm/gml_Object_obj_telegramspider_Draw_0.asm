.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 10
mul.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.y
pushi.e 2
sub.i.v
push.v self.x
pushi.e 4
sub.i.v
push.v self.image_index
pushi.e 434
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.x
pushi.e 570
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
push.v self.hspeed
push.d 0.2
add.d.v
pop.v.v self.hspeed
push.v self.hspeed
pushi.e 0
cmp.i.v GTE
bf [6]

:[5]
pushi.e 0
pop.v.i self.hspeed
pushi.e 1
pop.v.i self.con

:[6]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [end]

:[7]
push.v self.hspeed
pushi.e 1
add.i.v
pop.v.v self.hspeed
push.v self.x
pushi.e 700
cmp.i.v GT
bf [end]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[end]