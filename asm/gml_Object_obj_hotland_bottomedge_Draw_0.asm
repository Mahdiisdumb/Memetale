.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.image_xscale
pushi.e 0
cmp.i.v GTE
bf [12]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
push.v self.image_xscale
cmp.v.v LT
bf [9]

:[3]
push.v self.i
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.y
push.v self.x
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
pushi.e 980
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [8]

:[5]
push.v self.i
push.v self.image_xscale
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [7]

:[6]
push.v self.y
push.v self.x
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
pushi.e 983
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [8]

:[7]
push.v self.y
push.v self.x
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
pushi.e 979
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[9]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushbltn.v self.room
pushi.e 171
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 20
push.v self.image_xscale
mul.v.i
push.v self.y
pushi.e 19
add.i.v
push.v self.x
pushi.e 0
conv.i.v
pushi.e 978
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[11]
b [end]

:[12]
push.v self.y
push.v self.x
pushi.e 20
sub.i.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
pushi.e 983
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
pop.v.i self.i

:[13]
push.v self.i
push.v self.image_xscale
neg.v
cmp.v.v LT
bf [end]

:[14]
push.v self.y
push.v self.x
push.v self.i
pushi.e 20
mul.i.v
sub.v.v
pushi.e 20
sub.i.v
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
pushi.e 979
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [13]

:[end]