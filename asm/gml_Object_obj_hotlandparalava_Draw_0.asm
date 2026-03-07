.localvar 0 arguments

:[0]
pushbltn.v self.room_width
pushi.e 20
conv.i.d
div.d.v
pop.v.v self.maximum
pushi.e -1
pushi.e 4
dup.i 1
push.v [array]self.xx
push.d 0.25
add.d.v
pop.i.v [array]self.xx
pushi.e -1
pop.v.i self.i

:[1]
push.v self.i
push.v self.maximum
pushi.e 1
add.i.v
cmp.v.v LT
bf [3]

:[2]
push.d 0.5
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v self.room_height
pushi.e 80
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
pushi.e -1
pushi.e 4
push.v [array]self.xx
add.v.v
pushi.e 0
conv.i.v
pushi.e 1966
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 20
mul.i.v
pushi.e -1
pushi.e 4
push.v [array]self.xx
add.v.v
pop.v.v self.lastx
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e -1
pushi.e 4
push.v [array]self.xx
pushi.e 20
cmp.i.v GTE
bf [5]

:[4]
pushi.e -1
pushi.e 4
dup.i 1
push.v [array]self.xx
pushi.e 20
sub.i.v
pop.i.v [array]self.xx

:[5]
pushi.e -1
pushi.e 3
dup.i 1
push.v [array]self.xx
push.d 0.5
add.d.v
pop.i.v [array]self.xx
pushi.e -1
pop.v.i self.i

:[6]
push.v self.i
push.v self.maximum
pushi.e 1
add.i.v
cmp.v.v LT
bf [8]

:[7]
push.d 0.75
conv.d.v
push.i 16777215
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushbltn.v self.room_height
pushi.e 68
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
pushi.e -1
pushi.e 3
push.v [array]self.xx
add.v.v
pushi.e 0
conv.i.v
pushi.e 1966
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.i
pushi.e 20
mul.i.v
pushi.e -1
pushi.e 3
push.v [array]self.xx
add.v.v
pop.v.v self.lastx
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [6]

:[8]
pushi.e -1
pushi.e 3
push.v [array]self.xx
pushi.e 20
cmp.i.v GTE
bf [10]

:[9]
pushi.e -1
pushi.e 3
dup.i 1
push.v [array]self.xx
pushi.e 20
sub.i.v
pop.i.v [array]self.xx

:[10]
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.xx
push.d 0.8
add.d.v
pop.i.v [array]self.xx
pushi.e -1
pop.v.i self.i

:[11]
push.v self.i
push.v self.maximum
pushi.e 1
add.i.v
cmp.v.v LT
bf [13]

:[12]
pushbltn.v self.room_height
pushi.e 54
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
pushi.e -1
pushi.e 2
push.v [array]self.xx
add.v.v
pushi.e 0
conv.i.v
pushi.e 1966
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 20
mul.i.v
pushi.e -1
pushi.e 2
push.v [array]self.xx
add.v.v
pop.v.v self.lastx
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [11]

:[13]
pushi.e -1
pushi.e 2
push.v [array]self.xx
pushi.e 20
cmp.i.v GTE
bf [15]

:[14]
pushi.e -1
pushi.e 2
dup.i 1
push.v [array]self.xx
pushi.e 20
sub.i.v
pop.i.v [array]self.xx

:[15]
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.xx
push.d 0.9
add.d.v
pop.i.v [array]self.xx
pushi.e -1
pop.v.i self.i

:[16]
push.v self.i
push.v self.maximum
pushi.e 1
add.i.v
cmp.v.v LT
bf [18]

:[17]
pushbltn.v self.room_height
pushi.e 38
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
pushi.e -1
pushi.e 1
push.v [array]self.xx
add.v.v
pushi.e 0
conv.i.v
pushi.e 1966
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 20
mul.i.v
pushi.e -1
pushi.e 1
push.v [array]self.xx
add.v.v
pop.v.v self.lastx
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [16]

:[18]
pushi.e -1
pushi.e 1
push.v [array]self.xx
pushi.e 20
cmp.i.v GTE
bf [20]

:[19]
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.xx
pushi.e 20
sub.i.v
pop.i.v [array]self.xx

:[20]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.xx
pushi.e 1
add.i.v
pop.i.v [array]self.xx
pushi.e -1
pop.v.i self.i

:[21]
push.v self.i
push.v self.maximum
pushi.e 1
add.i.v
cmp.v.v LT
bf [23]

:[22]
pushbltn.v self.room_height
pushi.e 20
sub.i.v
push.v self.i
pushi.e 20
mul.i.v
pushi.e -1
pushi.e 0
push.v [array]self.xx
add.v.v
pushi.e 0
conv.i.v
pushi.e 1966
conv.i.v
call.i draw_sprite(argc=4)
popz.v
push.v self.i
pushi.e 20
mul.i.v
pushi.e -1
pushi.e 0
push.v [array]self.xx
add.v.v
pop.v.v self.lastx
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [21]

:[23]
pushi.e -1
pushi.e 0
push.v [array]self.xx
pushi.e 20
cmp.i.v GTE
bf [end]

:[24]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.xx
pushi.e 20
sub.i.v
pop.i.v [array]self.xx

:[end]