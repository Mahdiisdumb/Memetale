.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.anim
push.d 0.1
add.d.v
pop.v.v self.anim
pushi.e -5
pushi.e 484
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 65535
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 32
add.i.v
push.v self.x
pushi.e 34
add.i.v
push.v self.anim
pushi.e 2213
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.y
pushi.e 13
add.i.v
push.v self.bedy
add.v.v
push.v self.x
pushi.e 2
add.i.v
pushi.e 39
push.v self.bedy
sub.v.i
pushi.e 46
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2257
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v
pushi.e -5
pushi.e 484
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [end]

:[3]
push.v self.bedy
pushi.e 4
add.i.v
pop.v.v self.bedy
push.v self.bedy
pushi.e 30
cmp.i.v GTE
bf [end]

:[4]
pushi.e 30
pop.v.i self.bedy

:[end]