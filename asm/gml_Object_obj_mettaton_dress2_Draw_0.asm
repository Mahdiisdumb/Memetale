.localvar 0 arguments

:[0]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
push.v self.sprite_index
call.i draw_sprite(argc=4)
popz.v
push.v self.animimg
push.d 0.25
add.d.v
pop.v.v self.animimg
push.i 50000
push.v self.y
pushi.e 10
mul.i.v
sub.v.i
pop.v.v self.depth
push.v self.arm
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.v self.y
pushi.e 26
sub.i.v
push.v self.yoff
add.v.v
push.v self.x
pushi.e 19
sub.i.v
push.v self.xoff
add.v.v
push.v self.animimg
pushi.e 1814
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[2]
push.v self.arm
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
push.v self.y
pushi.e 26
sub.i.v
pushi.e 8
sub.i.v
push.v self.yoff
add.v.v
push.v self.x
pushi.e 19
sub.i.v
push.v self.xoff
add.v.v
push.v self.animimg
pushi.e 1820
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[4]
push.v self.arm
pushi.e 2
cmp.i.v EQ
bf [6]

:[5]
push.v self.y
pushi.e 26
sub.i.v
pushi.e 10
sub.i.v
push.v self.yoff
add.v.v
push.v self.x
pushi.e 19
sub.i.v
pushi.e 10
sub.i.v
push.v self.xoff
add.v.v
push.v self.animimg
pushi.e 1818
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[6]
push.v self.arm
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
push.v self.y
pushi.e 26
sub.i.v
pushi.e 10
sub.i.v
push.v self.yoff
add.v.v
push.v self.x
pushi.e 19
sub.i.v
push.v self.xoff
add.v.v
push.v self.animimg
pushi.e 1815
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[8]
push.v self.arm
pushi.e 4
cmp.i.v EQ
bf [10]

:[9]
push.v self.y
pushi.e 26
sub.i.v
pushi.e 9
sub.i.v
push.v self.yoff
add.v.v
push.v self.x
pushi.e 19
sub.i.v
pushi.e 5
sub.i.v
push.v self.xoff
add.v.v
push.v self.animimg
pushi.e 1816
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[10]
push.v self.arm
pushi.e 5
cmp.i.v EQ
bf [12]

:[11]
push.v self.y
pushi.e 26
sub.i.v
pushi.e 5
sub.i.v
push.v self.yoff
add.v.v
push.v self.x
pushi.e 19
sub.i.v
pushi.e 18
sub.i.v
push.v self.xoff
add.v.v
push.v self.animimg
pushi.e 1817
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[12]
push.v self.arm
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
push.v self.y
pushi.e 26
sub.i.v
pushi.e 4
add.i.v
push.v self.yoff
add.v.v
push.v self.x
pushi.e 19
sub.i.v
pushi.e 1
sub.i.v
push.v self.xoff
add.v.v
push.v self.animimg
pushi.e 1819
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[14]
push.v self.arm
pushi.e 7
cmp.i.v EQ
bf [16]

:[15]
push.v self.y
pushi.e 26
sub.i.v
pushi.e 1
add.i.v
push.v self.yoff
add.v.v
push.v self.x
pushi.e 19
sub.i.v
pushi.e 1
sub.i.v
push.v self.xoff
add.v.v
push.v self.animimg
pushi.e 1823
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[16]
push.v self.arm
pushi.e 8
cmp.i.v EQ
bf [18]

:[17]
push.v self.y
pushi.e 26
sub.i.v
pushi.e 11
sub.i.v
push.v self.yoff
add.v.v
push.v self.x
pushi.e 19
sub.i.v
pushi.e 14
sub.i.v
push.v self.xoff
add.v.v
push.v self.animimg
pushi.e 1821
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[18]
push.v self.arm
pushi.e 9
cmp.i.v EQ
bf [20]

:[19]
push.v self.y
pushi.e 26
sub.i.v
pushi.e 7
sub.i.v
push.v self.yoff
add.v.v
push.v self.x
pushi.e 19
sub.i.v
pushi.e 17
sub.i.v
push.v self.xoff
add.v.v
push.v self.animimg
pushi.e 1822
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[20]
push.v self.arm
pushi.e 10
cmp.i.v EQ
bf [22]

:[21]
push.v self.y
pushi.e 26
sub.i.v
pushi.e 8
sub.i.v
push.v self.yoff
add.v.v
push.v self.x
pushi.e 19
sub.i.v
pushi.e 14
sub.i.v
push.v self.xoff
add.v.v
push.v self.animimg
pushi.e 1824
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[22]
push.v self.arm
pushi.e 11
cmp.i.v EQ
bf [24]

:[23]
push.v self.y
pushi.e 26
sub.i.v
pushi.e 11
sub.i.v
push.v self.yoff
add.v.v
push.v self.x
pushi.e 19
sub.i.v
pushi.e 14
sub.i.v
push.v self.xoff
add.v.v
push.v self.animimg
pushi.e 1825
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[24]
push.v self.arm
pushi.e 12
cmp.i.v EQ
bf [end]

:[25]
push.v self.y
pushi.e 26
sub.i.v
pushi.e 11
sub.i.v
push.v self.yoff
add.v.v
push.v self.x
pushi.e 19
sub.i.v
pushi.e 14
sub.i.v
push.v self.xoff
add.v.v
pushi.e 2
conv.i.v
pushi.e 1826
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]