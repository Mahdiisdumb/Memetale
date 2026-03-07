.localvar 0 arguments

:[0]
pushbltn.v self.room
pushi.e 152
cmp.i.v EQ
bf [4]

:[1]
pushi.e 2
pop.v.i self.idealammo
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[3]
pushi.e 120
pop.v.i self.gridl
pushi.e 180
pop.v.i self.gridr
pushi.e 60
pop.v.i self.gridu
pushi.e 120
pop.v.i self.gridd
pushi.e 1244
conv.i.v
pushi.e 60
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 100
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
popz.v

:[4]
pushbltn.v self.room
pushi.e 150
cmp.i.v EQ
bf [8]

:[5]
pushi.e 2
pop.v.i self.idealammo
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[7]
pushi.e 120
pop.v.i self.gridl
pushi.e 200
pop.v.i self.gridr
pushi.e 40
pop.v.i self.gridu
pushi.e 120
pop.v.i self.gridd
pushi.e 1244
conv.i.v
pushi.e 60
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 60
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 100
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 60
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 80
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
popz.v

:[8]
pushbltn.v self.room
pushi.e 173
cmp.i.v EQ
bf [12]

:[9]
pushi.e 1
pop.v.i self.idealammo
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[11]
pushi.e 120
pop.v.i self.gridl
pushi.e 220
pop.v.i self.gridr
pushi.e 40
pop.v.i self.gridu
pushi.e 120
pop.v.i self.gridd
pushi.e 1244
conv.i.v
pushi.e 40
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 60
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 80
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 100
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
popz.v

:[12]
pushbltn.v self.room
pushi.e 175
cmp.i.v EQ
bf [16]

:[13]
pushi.e 1
pop.v.i self.idealammo
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[15]
pushi.e 120
pop.v.i self.gridl
pushi.e 220
pop.v.i self.gridr
pushi.e 20
pop.v.i self.gridu
pushi.e 120
pop.v.i self.gridd
pushi.e 1244
conv.i.v
pushi.e 20
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 40
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 60
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 60
conv.i.v
pushi.e 200
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 80
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 80
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
popz.v

:[16]
pushbltn.v self.room
pushi.e 205
cmp.i.v EQ
bf [20]

:[17]
pushi.e 2
pop.v.i self.idealammo
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [19]

:[18]
pushi.e 1
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[19]
pushi.e 120
pop.v.i self.gridl
pushi.e 220
pop.v.i self.gridr
pushi.e 20
pop.v.i self.gridu
pushi.e 120
pop.v.i self.gridd
pushi.e 1244
conv.i.v
pushi.e 40
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 80
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 60
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 60
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 60
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1244
conv.i.v
pushi.e 60
conv.i.v
pushi.e 200
conv.i.v
call.i instance_create(argc=3)
popz.v

:[20]
push.v self.win
pushi.e 0
cmp.i.v GT
bf [end]

:[21]
pushi.e 1244
pushenv [23]

:[22]
call.i instance_destroy(argc=0)
popz.v

:[23]
popenv [22]
pushi.e 1241
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]

:[end]