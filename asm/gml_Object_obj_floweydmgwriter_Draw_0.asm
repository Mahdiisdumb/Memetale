.localvar 0 arguments

:[0]
push.v self.dmg
pop.v.v self.thisnum
push.v self.thisnum
pushi.e 0
cmp.i.v GTE
bf [5]

:[1]
pushi.e 0
pop.v.i self.place
pushi.e 10
pop.v.i self.numadd
push.v self.thisnum
push.v self.numadd
cmp.v.v GTE
bf [4]

:[2]
push.v self.thisnum
push.v self.numadd
cmp.v.v GTE
bf [4]

:[3]
push.v self.place
pushi.e 1
add.i.v
pop.v.v self.place
push.v self.numadd
pushi.e 10
mul.i.v
pop.v.v self.numadd
b [2]

:[4]
b [6]

:[5]
pushi.e 0
pop.v.i self.thisnum
pushi.e 0
pop.v.i self.place

:[6]
push.v self.thisnum
pop.v.v self.thisnum2
push.v self.place
pop.v.v self.i

:[7]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [9]

:[8]
push.v self.thisnum2
push.v self.i
pushi.e 10
conv.i.v
call.i power(argc=2)
div.v.v
call.i floor(argc=1)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.numnum
push.v self.thisnum2
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.numnum
push.v self.i
pushi.e 10
conv.i.v
call.i power(argc=2)
mul.v.v
sub.v.v
pop.v.v self.thisnum2
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [7]

:[9]
pushi.e 0
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.ystart
pushi.e 28
add.i.v
push.v self.x
pushglb.v global.floweymaxhp
push.v self.stretchfactor
mul.v.v
add.v.v
pushi.e 1
add.i.v
push.v self.ystart
pushi.e 7
add.i.v
push.v self.x
pushi.e 1
sub.i.v
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 4210752
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.ystart
pushi.e 28
add.i.v
push.v self.x
pushglb.v global.floweymaxhp
push.v self.stretchfactor
mul.v.v
add.v.v
push.v self.ystart
pushi.e 8
add.i.v
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v
push.i 65280
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.v self.apparenthp
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
push.v self.ystart
pushi.e 28
add.i.v
push.v self.x
push.v self.apparenthp
push.v self.stretchfactor
mul.v.v
add.v.v
push.v self.ystart
pushi.e 8
add.i.v
push.v self.x
call.i ossafe_fill_rectangle(argc=4)
popz.v

:[11]
push.v self.place
pop.v.v self.i

:[12]
push.v self.i
pushi.e 0
cmp.i.v GTE
bf [14]

:[13]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 255
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.y
pushi.e 28
sub.i.v
push.v self.x
pushi.e 20
sub.i.v
push.v self.stretchwidth
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.v self.i
pushi.e 32
mul.i.v
sub.v.v
push.v self.place
pushi.e 16
mul.i.v
add.v.v
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.numnum
pushi.e 42
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 1
sub.i.v
pop.v.v self.i
b [12]

:[14]
push.v self.y
push.v self.ystart
cmp.v.v GT
bf [end]

:[15]
push.v self.ystart
pop.v.v self.y
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.gravity

:[end]