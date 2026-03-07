.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.type
pushi.e 10
pop.v.i self.s_buffer
pushi.e 0
pop.v.i self.o_sound
pushi.e 0
pop.v.i self.c_sound
pushi.e 0
pop.v.i self.s_sound
pushi.e -1
pop.v.i self.open
pushi.e 0
pop.v.i self.ox
pushi.e 0
pop.v.i self.anim
pushi.e 0
pop.v.i self.red
pushi.e 0
pop.v.i self.yel
pushi.e 0
pop.v.i self.gre
pushi.e 0
pop.v.i self.blu
pushi.e -5
pushi.e 481
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.red

:[2]
pushi.e -5
pushi.e 482
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.blu

:[4]
pushi.e -5
pushi.e 483
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
pop.v.i self.gre

:[6]
pushi.e -5
pushi.e 484
push.v [array]global.flag
pushi.e 3
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.yel

:[8]
pushbltn.v self.room
pushi.e 244
cmp.i.v EQ
bf [14]

:[9]
pushglb.v global.entrance
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[11]
pushi.e 0
pop.v.i self.shouldopen
pushi.e 0
pop.v.i self.type
pushi.e 1
pushi.e -5
pushi.e 480
pop.v.i [array]global.flag
pushi.e 1576
pushenv [13]

:[12]
push.d 0.3
conv.d.v
push.i 16777215
conv.i.v
push.i 8421504
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[13]
popenv [12]

:[14]
pushbltn.v self.room
pushi.e 246
cmp.i.v EQ
bf [16]

:[15]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
mul.i.v
pushi.e 3
conv.i.d
div.d.v
cmp.v.v LT
b [17]

:[16]
push.e 0

:[17]
bf [28]

:[18]
pushi.e 0
pop.v.i self.shouldopen
pushi.e 1
pop.v.i self.type
push.v self.red
pushi.e 1
cmp.i.v EQ
bf [22]

:[19]
push.v self.blu
pushi.e 1
cmp.i.v EQ
bf [22]

:[20]
push.v self.gre
pushi.e 1
cmp.i.v EQ
bf [22]

:[21]
push.v self.yel
pushi.e 1
cmp.i.v EQ
b [23]

:[22]
push.e 0

:[23]
bf [25]

:[24]
pushi.e 1
pop.v.i self.shouldopen

:[25]
pushi.e 1
pushi.e -5
pushi.e 480
pop.v.i [array]global.flag
pushi.e 1576
pushenv [27]

:[26]
push.d 0.3
conv.d.v
push.i 16777215
conv.i.v
push.i 8421504
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.image_blend

:[27]
popenv [26]

:[28]
pushbltn.v self.room
pushi.e 246
cmp.i.v EQ
bf [30]

:[29]
push.v self.x
pushbltn.v self.room_width
pushi.e 2
mul.i.v
pushi.e 3
conv.i.d
div.d.v
cmp.v.v GT
b [31]

:[30]
push.e 0

:[31]
bf [36]

:[32]
pushi.e 0
pop.v.i self.shouldopen
pushi.e 2
pop.v.i self.type
push.v self.red
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
pop.v.i self.shouldopen

:[34]
pushglb.v global.entrance
pushi.e 20
cmp.i.v EQ
bf [36]

:[35]
pushi.e 1
pop.v.i self.open

:[36]
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.s1
pushi.e 2
conv.i.v
push.v self.y
pushi.e 40
add.i.v
push.v self.x
pushi.e 20
add.i.v
call.i instance_create(argc=3)
pop.v.v self.s2
pushi.e 0
pop.v.i self.myinteract
pushglb.v global.entrance
pushi.e 19
cmp.i.v EQ
bf [end]

:[37]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]