.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.open
pushi.e 0
pop.v.i self.auto
pushi.e 0
pop.v.i self.con
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [2]

:[1]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
pushglb.v global.plot
pushi.e 108
cmp.i.v LT
bf [6]

:[5]
pushi.e 108
pop.v.i global.plot

:[6]
pushglb.v global.plot
pushi.e 107
cmp.i.v GT
bf [8]

:[7]
pushbltn.v self.room
pushi.e 90
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 1
pop.v.i self.auto

:[11]
pushbltn.v self.room
pushi.e 102
cmp.i.v EQ
bf [13]

:[12]
pushi.e -5
pushi.e 356
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [14]

:[13]
push.e 0

:[14]
bf [16]

:[15]
pushi.e 1
pop.v.i self.auto

:[16]
push.v self.auto
pushi.e 1
cmp.i.v EQ
bf [end]

:[17]
pushi.e 1
pop.v.i self.open
pushi.e 1
pop.v.i self.visible
pushi.e 4
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 10
add.i.v
call.i instance_position(argc=3)
conv.v.i
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]

:[end]