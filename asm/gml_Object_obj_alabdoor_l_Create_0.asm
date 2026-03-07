.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.buffer
pushi.e 1
pop.v.i self.active
pushi.e 0
pop.v.i self.doorx
pushi.e -1
pop.v.i self.open
pushi.e 0
pop.v.i self.side
pushbltn.v self.room
pushi.e 139
cmp.i.v EQ
bf [7]

:[1]
pushi.e 1973
pop.v.i self.sprite_index
pushglb.v global.entrance
pushi.e 5
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pop.v.i self.open
pushi.e 8
pop.v.i self.doorx

:[3]
pushi.e -5
pushi.e 492
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 2
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 0
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.doorx
b [6]

:[5]
pushi.e 811
conv.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 0
add.i.v
call.i instance_create(argc=3)
popz.v

:[6]
b [12]

:[7]
pushi.e 1
pop.v.i self.side
pushglb.v global.entrance
pushi.e 4
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i self.open
pushi.e 8
pop.v.i self.doorx

:[9]
pushi.e -5
pushi.e 492
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 2
conv.i.v
push.v self.y
pushi.e 51
add.i.v
push.v self.x
pushi.e 15
add.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pop.v.i self.active
pushi.e 0
pop.v.i self.doorx
b [12]

:[11]
pushi.e 812
conv.i.v
push.v self.y
pushi.e 50
add.i.v
push.v self.x
pushi.e 0
add.i.v
call.i instance_create(argc=3)
popz.v

:[12]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract

:[end]