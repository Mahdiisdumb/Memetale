.localvar 0 arguments

:[0]
push.v self.on
pushi.e 1
cmp.i.v EQ
bf [6]

:[1]
push.v self.amt
pushi.e 1
cmp.i.v LTE
bf [3]

:[2]
push.v self.amt
push.d 0.05
add.d.v
pop.v.v self.amt

:[3]
push.v self.y
pushi.e 0
cmp.i.v LT
bf [5]

:[4]
push.v self.y
pushi.e 1
add.i.v
pop.v.v self.y
b [6]

:[5]
pushi.e 0
pop.v.i self.on

:[6]
push.v self.on
pushi.e 2
cmp.i.v EQ
bf [12]

:[7]
push.v self.amt
pushi.e 0
cmp.i.v GT
bf [9]

:[8]
push.v self.amt
push.d 0.05
sub.d.v
pop.v.v self.amt

:[9]
push.v self.y
push.v self.ystart
cmp.v.v GT
bf [11]

:[10]
push.v self.y
pushi.e 1
sub.i.v
pop.v.v self.y
b [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
push.v self.reverse
pushi.e 0
cmp.i.v EQ
bf [14]

:[13]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
b [15]

:[14]
push.v self.siner
pushi.e 1
sub.i.v
pop.v.v self.siner

:[15]
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 8
conv.i.v
call.i draw_set_circle_precision(argc=1)
popz.v
push.d 0.5
push.v self.amt
mul.v.d
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[16]
push.v self.i
pushi.e 12
cmp.i.v LT
bf [18]

:[17]
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.i
pushi.e 20
mul.i.v
push.v self.siner
add.v.v
call.i make_color_hsv(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
push.v self.y
push.v self.i
pushi.e 10
mul.i.v
push.v self.siner
add.v.v
pushi.e 20
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 20
mul.i.v
add.v.v
pushi.e 140
add.i.v
push.v self.x
push.v self.i
pushi.e 10
mul.i.v
push.v self.siner
add.v.v
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 40
mul.i.v
add.v.v
call.i draw_circle(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [16]

:[18]
push.d 0.4
push.v self.amt
mul.v.d
call.i draw_set_alpha(argc=1)
popz.v
pushi.e 0
pop.v.i self.i

:[19]
push.v self.i
pushi.e 24
cmp.i.v LT
bf [21]

:[20]
pushi.e 255
conv.i.v
pushi.e 255
conv.i.v
push.v self.i
pushi.e 20
mul.i.v
push.v self.siner
add.v.v
call.i make_color_hsv(argc=3)
call.i draw_set_color(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 6
conv.i.v
push.v self.y
push.v self.i
pushi.e 5
mul.i.v
push.v self.siner
add.v.v
pushi.e 20
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 60
mul.i.v
add.v.v
pushi.e 140
add.i.v
push.v self.x
push.v self.i
pushi.e 10
mul.i.v
push.v self.siner
add.v.v
pushi.e 20
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 80
mul.i.v
add.v.v
call.i draw_circle(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [19]

:[21]
pushi.e 1
conv.i.v
call.i draw_set_alpha(argc=1)
popz.v
push.v self.y
push.v self.x
push.v self.image_index
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v

:[end]