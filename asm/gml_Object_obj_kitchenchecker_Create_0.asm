.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.level
pushi.e 1
pop.v.i self.bgalpha
pushi.e 3
conv.i.v
pushi.e 54
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.block
pushi.e 3
conv.i.v
pushi.e 77
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.block
pushi.e 3
conv.i.v
pushi.e 54
conv.i.v
pushi.e 280
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.block
pushi.e 3
conv.i.v
pushi.e 77
conv.i.v
pushi.e 280
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.block
pushi.e 15
conv.i.v
pushi.e 90
conv.i.v
pushi.e 83
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.block
pushi.e 2
conv.i.v
pushi.e 60
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 5
pop.v.v [array]self.block
pushi.e 2
conv.i.v
pushi.e 80
conv.i.v
pushi.e 180
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 6
pop.v.v [array]self.block
pushglb.v global.osflavor
pushi.e 4
cmp.i.v EQ
bf [2]

:[1]
pushi.e 814
conv.i.v
pushi.e 57
conv.i.v
pushi.e 212
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dogdoor
b [3]

:[2]
pushi.e -4
pop.v.i self.dogdoor

:[3]
pushi.e -1
pushi.e 0
push.v [array]self.block
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]
pushi.e -1
pushi.e 1
push.v [array]self.block
conv.v.i
pushenv [7]

:[6]
call.i instance_destroy(argc=0)
popz.v

:[7]
popenv [6]
pushi.e -1
pushi.e 2
push.v [array]self.block
conv.v.i
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]
pushi.e -1
pushi.e 3
push.v [array]self.block
conv.v.i
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]
pushi.e -1
pushi.e 5
push.v [array]self.block
conv.v.i
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
pushi.e -1
pushi.e 6
push.v [array]self.block
conv.v.i
pushenv [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
popenv [14]
push.v self.dogdoor
pushi.e -4
cmp.i.v NEQ
bf [19]

:[16]
push.v self.dogdoor
conv.v.i
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]
pushi.e -4
pop.v.i self.dogdoor

:[19]
push.v 1424.x
pop.v.v self.fridgex
push.v 1424.y
pop.v.v self.fridgey
push.v 1435.x
pop.v.v self.sinkx
push.v 1435.y
pop.v.v self.sinky
pushi.e 0
pop.v.i self.initcheck
pushi.e -5
pushi.e 88
push.v [array]global.flag
pushi.e 4
cmp.i.v GTE
bf [21]

:[20]
pushi.e -5
pushi.e 283
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [22]

:[21]
push.e 0

:[22]
bf [end]

:[23]
pushi.e 1
pushi.e -5
pushi.e 283
pop.v.i [array]global.flag

:[end]