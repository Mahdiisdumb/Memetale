.localvar 0 arguments

:[0]
push.v 1576.bbox_top
pushi.e 134
cmp.i.v LT
bf [13]

:[1]
pushi.e 0
pop.v.i self.level
pushi.e -1
pushi.e 0
push.v [array]self.block
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [8]

:[2]
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
bf [4]

:[3]
pushi.e -5
pushi.e 82
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 814
conv.i.v
pushi.e 57
conv.i.v
pushi.e 212
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.dogdoor
b [8]

:[7]
pushi.e -4
pop.v.i self.dogdoor

:[8]
pushi.e -1
pushi.e 4
push.v [array]self.block
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[9]
pushi.e -1
pushi.e 4
push.v [array]self.block
conv.v.i
pushenv [11]

:[10]
call.i instance_destroy(argc=0)
popz.v

:[11]
popenv [10]

:[12]
b [end]

:[13]
pushi.e 1
pop.v.i self.level
pushi.e -1
pushi.e 0
push.v [array]self.block
call.i instance_exists(argc=1)
conv.v.b
bf [30]

:[14]
pushi.e -1
pushi.e 0
push.v [array]self.block
conv.v.i
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e -1
pushi.e 1
push.v [array]self.block
conv.v.i
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]
pushi.e -1
pushi.e 2
push.v [array]self.block
conv.v.i
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
pushi.e -1
pushi.e 3
push.v [array]self.block
conv.v.i
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]
pushi.e -1
pushi.e 5
push.v [array]self.block
conv.v.i
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]
pushi.e -1
pushi.e 6
push.v [array]self.block
conv.v.i
pushenv [26]

:[25]
call.i instance_destroy(argc=0)
popz.v

:[26]
popenv [25]
push.v self.dogdoor
pushi.e -4
cmp.i.v NEQ
bf [30]

:[27]
push.v self.dogdoor
conv.v.i
pushenv [29]

:[28]
call.i instance_destroy(argc=0)
popz.v

:[29]
popenv [28]
pushi.e -4
pop.v.i self.dogdoor

:[30]
pushi.e -1
pushi.e 4
push.v [array]self.block
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[31]
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

:[end]