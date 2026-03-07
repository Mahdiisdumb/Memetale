.localvar 0 arguments

:[0]
push.v self.f
pushi.e 0
cmp.i.v EQ
bf [6]

:[1]
push.v self.c
pushi.e 0
cmp.i.v EQ
bf [3]

:[2]
push.v self.sinelover
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
pop.v.v self.sl2
b [4]

:[3]
push.v self.sinelover
pushi.e 10
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 8
mul.i.v
pop.v.v self.sl2

:[4]
push.v self.y
push.v self.bborder
pushi.e 20
sub.i.v
cmp.v.v LT
bf [6]

:[5]
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
push.v self.sl2
push.v self.x
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v self.f
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
push.v self.f
pushi.e 2
cmp.i.v EQ
bf [end]

:[9]
pushi.e 0
pop.v.i self.vspeed
push.v self.c
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
push.v self.sinelover
pushi.e 10
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 8
mul.i.v
pop.v.v self.sl2
b [12]

:[11]
push.v self.sinelover
pushi.e 10
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 8
mul.i.v
pop.v.v self.sl2

:[12]
push.v self.y
push.v self.bborder
pushi.e 20
sub.i.v
cmp.v.v LT
bf [14]

:[13]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 2
conv.i.v
push.d 1.5
push.v self.stetch
add.v.d
push.v self.y
push.v self.x
push.v self.sl2
add.v.v
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[14]
push.v self.sinelover
pushi.e 1
add.i.v
pop.v.v self.sinelover

:[end]