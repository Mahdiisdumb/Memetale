.localvar 0 arguments

:[0]
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 2
mul.i.v
push.v self.size
mul.v.v
pop.v.v self.dnty
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 2
mul.i.v
push.v self.size
mul.v.v
pop.v.v self.dntyx
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 4
mul.i.v
push.v self.size
mul.v.v
pop.v.v self.dnty2
push.v self.siner
pushi.e 4
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 5
mul.i.v
pop.v.v self.rt
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i sin(argc=1)
pushi.e 3
mul.i.v
push.v self.image_xscale
mul.v.v
pop.v.v self.ssx
push.v self.siner
pushi.e 3
conv.i.d
div.d.v
call.i cos(argc=1)
pushi.e 3
mul.i.v
pop.v.v self.ssy
push.v self.halfsies
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
conv.i.v
push.i 8421504
conv.i.v
push.v self.rt
push.v self.size
push.v self.size
push.v self.y
push.v self.dnty
add.v.v
push.v self.ssy
add.v.v
push.v self.x
push.v self.ssx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2290
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rt
push.v self.size
push.v self.size
push.v self.y
push.v self.dnty2
add.v.v
pushi.e 4
push.v self.size
mul.v.i
sub.v.v
push.v self.ssy
add.v.v
push.v self.x
push.v self.dntyx
sub.v.v
push.v self.ssx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2288
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rt
push.v self.size
push.v self.size
push.v self.y
push.v self.dnty2
sub.v.v
pushi.e 4
push.v self.size
mul.v.i
add.v.v
push.v self.x
push.v self.dntyx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2289
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.halfsies
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.rt
pushi.e 90
add.i.v
pop.v.v self.rt
pushi.e 1
conv.i.v
push.i 8421504
conv.i.v
push.v self.rt
push.v self.size
push.v self.size
push.v self.y
push.v self.ssy
add.v.v
push.v self.x
push.v self.dnty
add.v.v
push.v self.ssx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2284
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rt
push.v self.size
push.v self.size
push.v self.y
push.v self.dntyx
sub.v.v
push.v self.ssy
add.v.v
push.v self.x
push.v self.dnty2
add.v.v
pushi.e 4
push.v self.size
mul.v.i
sub.v.v
push.v self.ssx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2287
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rt
push.v self.size
push.v self.size
push.v self.y
push.v self.dntyx
add.v.v
push.v self.ssy
add.v.v
push.v self.x
push.v self.dnty2
sub.v.v
pushi.e 4
push.v self.size
mul.v.i
add.v.v
push.v self.ssx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2286
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[4]
push.v self.halfsies
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.rt
pushi.e 90
sub.i.v
pop.v.v self.rt
pushi.e 1
conv.i.v
push.i 8421504
conv.i.v
push.v self.rt
push.v self.size
push.v self.size
push.v self.y
push.v self.ssy
add.v.v
push.v self.x
push.v self.dnty
add.v.v
push.v self.ssx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2284
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rt
push.v self.size
push.v self.size
push.v self.y
push.v self.dntyx
sub.v.v
push.v self.ssy
add.v.v
push.v self.x
push.v self.dnty2
sub.v.v
pushi.e 4
push.v self.size
mul.v.i
add.v.v
push.v self.ssx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2287
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
pushi.e 1
conv.i.v
push.i 16777215
conv.i.v
push.v self.rt
push.v self.size
push.v self.size
push.v self.y
push.v self.dntyx
add.v.v
push.v self.ssy
add.v.v
push.v self.x
push.v self.dnty2
add.v.v
pushi.e 4
push.v self.size
mul.v.i
sub.v.v
push.v self.ssx
add.v.v
pushi.e 0
conv.i.v
pushi.e 2286
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[6]
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.maxer
push.d 0.8
cmp.d.v LT
bf [8]

:[7]
push.v self.maxer
push.d 0.1
add.d.v
pop.v.v self.maxer

:[8]
push.v self.maxer
push.v self.siner
pushi.e 2
conv.i.d
div.d.v
call.i sin(argc=1)
push.d 0.02
mul.d.v
add.v.v
pop.v.v self.size

:[end]