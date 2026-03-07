.localvar 0 arguments

:[0]
push.v self.ck
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.siner
pushi.e 6
add.i.v
pop.v.v self.siner

:[2]
push.v self.ck
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.siner
pushi.e 6
sub.i.v
pop.v.v self.siner

:[4]
push.v self.image_xscale
pushi.e 2
cmp.i.v GTE
bf [6]

:[5]
pushi.e 8
conv.i.v
call.i draw_set_circle_precision(argc=1)
popz.v
b [7]

:[6]
pushi.e 4
conv.i.v
call.i draw_set_circle_precision(argc=1)
popz.v

:[7]
pushi.e 0
pop.v.i self.i

:[8]
push.v self.i
push.v self.cogno
cmp.v.v LT
bf [14]

:[9]
pushi.e 128
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.image_xscale
pushi.e 2
cmp.i.v LT
bf [11]

:[10]
pushi.e 0
conv.i.v
pushi.e 2
push.v self.image_xscale
mul.v.i
push.v self.y
push.d 0.3
push.v self.image_yscale
mul.v.d
sub.v.v
push.v self.i
push.v self.cogno
div.v.v
pushi.e 360
mul.i.v
push.v self.siner
add.v.v
pushi.e 8
conv.i.v
call.i lengthdir_y(argc=2)
push.v self.image_yscale
mul.v.v
add.v.v
push.v self.x
push.d 0.3
push.v self.image_xscale
mul.v.d
sub.v.v
push.v self.i
push.v self.cogno
div.v.v
pushi.e 360
mul.i.v
push.v self.siner
add.v.v
pushi.e 8
conv.i.v
call.i lengthdir_x(argc=2)
push.v self.image_xscale
mul.v.v
add.v.v
call.i draw_circle(argc=4)
popz.v

:[11]
push.v self.image_xscale
pushi.e 2
cmp.i.v GTE
bf [13]

:[12]
pushi.e 0
conv.i.v
pushi.e 2
push.v self.image_xscale
mul.v.i
push.v self.y
push.d 0.4
push.v self.image_yscale
mul.v.d
sub.v.v
push.v self.i
push.v self.cogno
div.v.v
pushi.e 360
mul.i.v
push.v self.siner
add.v.v
pushi.e 8
conv.i.v
call.i lengthdir_y(argc=2)
push.v self.image_yscale
mul.v.v
add.v.v
push.v self.x
push.d 0.4
push.v self.image_xscale
mul.v.d
sub.v.v
push.v self.i
push.v self.cogno
div.v.v
pushi.e 360
mul.i.v
push.v self.siner
add.v.v
pushi.e 8
conv.i.v
call.i lengthdir_x(argc=2)
push.v self.image_xscale
mul.v.v
add.v.v
call.i draw_circle(argc=4)
popz.v

:[13]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [8]

:[14]
push.v self.image_xscale
pushi.e 2
cmp.i.v LT
bf [16]

:[15]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
push.v self.image_xscale
push.v self.y
push.v self.offy
add.v.v
push.v self.x
push.v self.offx
add.v.v
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite_ext(argc=9)
popz.v

:[16]
push.v self.image_xscale
pushi.e 2
cmp.i.v GTE
bf [end]

:[17]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
push.v self.image_yscale
pushi.e 2
conv.i.d
div.d.v
push.v self.image_xscale
pushi.e 2
conv.i.d
div.d.v
push.v self.y
push.v self.offy
add.v.v
push.v self.x
push.v self.offx
add.v.v
pushi.e 0
conv.i.v
pushi.e 976
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[end]