.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.image_xscale
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
push.v self.x
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 1034
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[2]
push.v self.image_xscale
pushi.e 1
cmp.i.v GT
bf [9]

:[3]
push.v self.y
push.v self.x
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 1038
conv.i.v
call.i draw_sprite(argc=4)
popz.v
pushi.e 1
pop.v.i self.i

:[4]
push.v self.i
push.v self.image_xscale
pushi.e 1
add.i.v
cmp.v.v LT
bf [9]

:[5]
push.v self.i
push.v self.image_xscale
cmp.v.v LT
bf [7]

:[6]
push.v self.y
push.v self.x
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 1036
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
pushi.e 20
sub.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 1037
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [9]

:[8]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [4]

:[9]
push.v self.image_yscale
pushi.e 1
cmp.i.v GT
bf [11]

:[10]
push.v self.image_xscale
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [16]

:[13]
pushi.e 1
pop.v.i self.i

:[14]
push.v self.i
push.v self.image_yscale
cmp.v.v LTE
bf [16]

:[15]
push.v self.y
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 1041
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [14]

:[16]
push.v self.image_yscale
pushi.e 1
cmp.i.v GT
bf [18]

:[17]
push.v self.image_xscale
pushi.e 1
cmp.i.v GT
b [19]

:[18]
push.e 0

:[19]
bf [end]

:[20]
pushi.e 1
pop.v.i self.j

:[21]
push.v self.j
push.v self.image_yscale
cmp.v.v LTE
bf [end]

:[22]
push.v self.j
push.v self.image_yscale
cmp.v.v LT
bf [24]

:[23]
push.v self.y
push.v self.j
pushi.e 20
mul.i.v
add.v.v
push.v self.x
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 1039
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[24]
push.v self.j
push.v self.image_yscale
cmp.v.v EQ
bf [26]

:[25]
push.v self.y
push.v self.j
pushi.e 20
mul.i.v
add.v.v
pushi.e 20
sub.i.v
push.v self.x
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 1044
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[26]
pushi.e 1
pop.v.i self.i

:[27]
push.v self.i
push.v self.image_xscale
cmp.v.v LTE
bf [37]

:[28]
push.v self.j
push.v self.image_yscale
cmp.v.v LT
bf [32]

:[29]
push.v self.i
push.v self.image_xscale
cmp.v.v EQ
bf [31]

:[30]
push.v self.y
push.v self.j
pushi.e 20
mul.i.v
add.v.v
push.v self.x
push.v self.i
pushi.e 20
mul.i.v
add.v.v
pushi.e 20
sub.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 1040
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [32]

:[31]
push.v self.y
push.v self.j
pushi.e 20
mul.i.v
add.v.v
push.v self.x
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 1041
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[32]
push.v self.j
push.v self.image_yscale
cmp.v.v EQ
bf [36]

:[33]
push.v self.i
push.v self.image_xscale
cmp.v.v EQ
bf [35]

:[34]
push.v self.y
push.v self.j
pushi.e 20
mul.i.v
add.v.v
pushi.e 20
sub.i.v
push.v self.x
push.v self.i
pushi.e 20
mul.i.v
add.v.v
pushi.e 20
sub.i.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 1043
conv.i.v
call.i draw_sprite(argc=4)
popz.v
b [36]

:[35]
push.v self.y
push.v self.j
pushi.e 20
mul.i.v
add.v.v
pushi.e 20
sub.i.v
push.v self.x
push.v self.i
pushi.e 20
mul.i.v
add.v.v
push.v self.siner
pushi.e 5
conv.i.d
div.d.v
pushi.e 1042
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[36]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [27]

:[37]
push.v self.j
pushi.e 1
add.i.v
pop.v.v self.j
b [21]

:[end]