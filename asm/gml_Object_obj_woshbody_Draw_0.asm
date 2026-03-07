.localvar 0 arguments

:[0]
push.v self.anim
push.d 0.2
add.d.v
pop.v.v self.anim
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
pushi.e 284
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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
push.v self.ducky
add.v.v
push.v self.x
pushi.e 46
add.i.v
push.v self.image_index
pushi.e 278
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.wy
pushi.e 40
push.v self.x
add.v.i
push.v self.anim
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
sub.v.v
pushi.e 28
conv.i.v
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 283
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 2
conv.i.v
pushi.e 2
conv.i.v
push.v self.wy
pushi.e 40
push.v self.x
add.v.i
push.v self.anim
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
add.v.v
pushi.e 28
conv.i.v
pushi.e 16
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 283
conv.i.v
call.i draw_sprite_part_ext(argc=12)
popz.v
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
pushi.e 50
add.i.v
push.v self.x
pushi.e 88
add.i.v
push.v self.anim
pushi.e 282
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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
push.v self.hy
add.v.v
push.v self.x
push.v self.image_index
pushi.e 279
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.bull
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
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
push.v self.hy
add.v.v
push.v self.fy
add.v.v
push.v self.x
push.v self.image_index
pushi.e 280
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.bull
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
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
push.v self.hy
add.v.v
push.v self.fy
add.v.v
push.v self.x
push.v self.image_index
pushi.e 281
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]