.localvar 0 arguments

:[0]
push.v 1576.bbox_top
pushi.e 125
cmp.i.v LT
bf [2]

:[1]
pushi.e 2
pop.v.i self.level
b [3]

:[2]
pushi.e 1
pop.v.i self.level

:[3]
pushi.e -1
pushi.e 0
push.v [array]self.block
call.i instance_exists(argc=1)
conv.v.b
bf [20]

:[4]
pushi.e -1
pushi.e 0
push.v [array]self.block
conv.v.i
pushenv [6]

:[5]
call.i instance_destroy(argc=0)
popz.v

:[6]
popenv [5]
pushi.e -1
pushi.e 1
push.v [array]self.block
conv.v.i
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]
pushi.e -1
pushi.e 2
push.v [array]self.block
conv.v.i
pushenv [10]

:[9]
call.i instance_destroy(argc=0)
popz.v

:[10]
popenv [9]
pushi.e -1
pushi.e 3
push.v [array]self.block
conv.v.i
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]
pushi.e -1
pushi.e 5
push.v [array]self.block
conv.v.i
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]
pushi.e -1
pushi.e 6
push.v [array]self.block
conv.v.i
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
push.v self.dogdoor
pushi.e -4
cmp.i.v NEQ
bf [20]

:[17]
push.v self.dogdoor
conv.v.i
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]
pushi.e -4
pop.v.i self.dogdoor

:[20]
pushi.e -1
pushi.e 4
push.v [array]self.block
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[21]
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