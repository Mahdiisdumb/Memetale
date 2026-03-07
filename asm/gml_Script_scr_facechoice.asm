.localvar 0 arguments
.localvar 1 face_x 655
.localvar 2 face 656

:[0]
pushglb.v global.facechoice
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 766
conv.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.y
pushi.e 25
add.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.x
pushi.e 33
sub.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 765
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[2]
pushglb.v global.facechoice
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 769
conv.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.y
pushi.e 25
add.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.x
pushi.e 36
sub.i.v
call.i instance_create(argc=3)
popz.v

:[4]
pushglb.v global.facechoice
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 777
conv.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.y
pushi.e 25
add.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.x
pushi.e 35
sub.i.v
call.i instance_create(argc=3)
popz.v

:[6]
pushglb.v global.facechoice
pushi.e 4
cmp.i.v EQ
bf [12]

:[7]
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [9]

:[8]
push.v self.writer
conv.v.i
push.v [stacktop]self.writingxend
pushi.e 30
add.i.v
pop.v.v local.face_x
b [10]

:[9]
push.v self.writer
conv.v.i
push.v [stacktop]self.x
pushi.e 35
sub.i.v
pop.v.v local.face_x

:[10]
pushi.e 776
conv.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.y
pushi.e 25
add.i.v
pushloc.v local.face_x
call.i instance_create(argc=3)
pop.v.v local.face
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [12]

:[11]
pushi.e -1
pushloc.v local.face
conv.v.i
pop.v.i [stacktop]self.image_xscale

:[12]
pushglb.v global.facechoice
pushi.e 5
cmp.i.v EQ
bf [14]

:[13]
pushi.e 778
conv.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.y
pushi.e 25
add.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.x
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
popz.v

:[14]
pushglb.v global.facechoice
pushi.e 6
cmp.i.v EQ
bf [16]

:[15]
pushi.e 771
conv.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.y
pushi.e 25
add.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.x
pushi.e 39
sub.i.v
call.i instance_create(argc=3)
popz.v

:[16]
pushglb.v global.facechoice
pushi.e 7
cmp.i.v EQ
bf [18]

:[17]
pushi.e 772
conv.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.y
pushi.e 20
add.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.x
pushi.e 40
sub.i.v
call.i instance_create(argc=3)
popz.v

:[18]
pushglb.v global.facechoice
pushi.e 8
cmp.i.v EQ
bf [20]

:[19]
pushi.e 774
conv.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.y
pushi.e 45
add.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.x
pushi.e 18
sub.i.v
call.i instance_create(argc=3)
popz.v

:[20]
pushglb.v global.facechoice
pushi.e 9
cmp.i.v EQ
bf [end]

:[21]
pushi.e 773
conv.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.y
pushi.e 30
add.i.v
push.v self.writer
conv.v.i
push.v [stacktop]self.x
pushi.e 30
sub.i.v
call.i instance_create(argc=3)
popz.v

:[end]