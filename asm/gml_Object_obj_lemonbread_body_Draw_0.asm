.localvar 0 arguments

:[0]
push.v self.counter
pushi.e 1
add.i.v
pop.v.v self.counter
push.v self.siner
pushi.e 1
add.i.v
pop.v.v self.siner
push.v self.melting
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
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
pushi.e 96
add.i.v
push.v self.x
pushi.e 12
sub.i.v
push.v self.siner
pushi.e 10
conv.i.d
div.d.v
pushi.e 716
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
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
push.v self.x
push.v self.face_index
pushi.e 715
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v

:[2]
push.v self.counter
pushi.e 100
cmp.i.v GT
bf [4]

:[3]
push.v self.counter
pushi.e 150
cmp.i.v LT
b [5]

:[4]
push.e 0

:[5]
bf [8]

:[6]
push.v self.face_index
push.d 0.25
add.d.v
pop.v.v self.face_index
push.v self.face_index
pushi.e 3
cmp.i.v GTE
bf [8]

:[7]
pushi.e 150
pop.v.i self.counter

:[8]
push.v self.counter
pushi.e 200
cmp.i.v GT
bf [10]

:[9]
push.v self.counter
pushi.e 230
cmp.i.v LT
b [11]

:[10]
push.e 0

:[11]
bf [14]

:[12]
pushi.e 1
pop.v.i self.changed
push.v self.face_index
push.d 0.5
add.d.v
pop.v.v self.face_index
push.v self.face_index
pushi.e 6
cmp.i.v GT
bf [14]

:[13]
push.v self.face_index
pushi.e 1
sub.i.v
pop.v.v self.face_index

:[14]
push.v self.counter
pushi.e 230
cmp.i.v EQ
bf [16]

:[15]
pushi.e 3
pop.v.i self.face_index

:[16]
push.v self.counter
pushi.e 260
cmp.i.v GT
bf [19]

:[17]
push.v self.face_index
push.d 0.25
sub.d.v
pop.v.v self.face_index
push.v self.face_index
pushi.e 1
cmp.i.v LT
bf [19]

:[18]
pushi.e 0
pop.v.i self.face_index
pushi.e -90
pop.v.i self.counter

:[19]
push.v self.melting
pushi.e 1
cmp.i.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.i self.melt_index
pushi.e 2
pop.v.i self.melting

:[21]
push.v self.melting
pushi.e 2
cmp.i.v EQ
bf [24]

:[22]
push.v self.melt_index
push.d 0.5
add.d.v
pop.v.v self.melt_index
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
pushi.e 12
add.i.v
push.v self.x
pushi.e 16
sub.i.v
push.v self.melt_index
call.i floor(argc=1)
pushi.e 714
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.melt_index
pushi.e 9
cmp.i.v GTE
bf [24]

:[23]
pushi.e 3
pop.v.i self.melting

:[24]
push.v self.melting
pushi.e 4
cmp.i.v EQ
bf [end]

:[25]
push.v self.melt_index
push.d 0.5
sub.d.v
pop.v.v self.melt_index
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
pushi.e 12
add.i.v
push.v self.x
pushi.e 16
sub.i.v
push.v self.melt_index
call.i floor(argc=1)
pushi.e 714
conv.i.v
call.i draw_sprite_ext(argc=9)
popz.v
push.v self.melt_index
pushi.e 1
cmp.i.v LT
bf [end]

:[26]
pushi.e 0
pop.v.i self.melting
push.v self.changed
pushi.e 0
cmp.i.v EQ
bf [28]

:[27]
pushi.e 80
pop.v.i self.counter
b [29]

:[28]
pushi.e -50
pop.v.i self.counter

:[29]
pushi.e 0
pop.v.i self.face_index

:[end]