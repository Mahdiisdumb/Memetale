.localvar 0 arguments

:[0]
push.v self.anim
push.d 0.25
add.d.v
pop.v.v self.anim
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.i 16777215
pop.v.i self.image_blend

:[2]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.i 65535
pop.v.i self.image_blend

:[4]
pushi.e 1
conv.i.v
push.v self.image_blend
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
push.v self.sprite_width
sub.v.v
pushi.e 5
add.i.v
push.v self.y
pushi.e 1
add.i.v
push.v self.x
call.i collision_rectangle(argc=7)
conv.v.b
bf [12]

:[5]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 740
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
push.v self.sprite_width
sub.v.v
pushi.e 5
add.i.v
push.v self.y
pushi.e 1
add.i.v
push.v self.x
call.i collision_rectangle(argc=7)
pop.v.v self.g
push.v self.g
conv.v.i
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]
pushi.e 403
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[8]
pushi.e 111
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v global.ratings
pushi.e 5
add.i.v
pop.v.v global.ratings

:[9]
push.v self.on
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.on
b [12]

:[11]
pushi.e 0
pop.v.i self.on

:[12]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
push.v self.s
pushi.e 1
add.i.v
pop.v.v self.s
push.v self.xinit
push.v self.sprite_width
add.v.v
push.v self.s
push.v self.sp
div.v.v
call.i sin(argc=1)
push.v self.sf
mul.v.v
add.v.v
pop.v.v self.x
push.v self.c
pushi.e 1
cmp.i.v EQ
bf [end]

:[14]
push.v self.xinit
push.v self.sprite_width
add.v.v
push.v self.s
push.v self.sp
div.v.v
call.i cos(argc=1)
push.v self.sf
mul.v.v
add.v.v
pop.v.v self.x

:[end]