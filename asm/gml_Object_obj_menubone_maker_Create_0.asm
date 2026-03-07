.localvar 0 arguments

:[0]
pushi.e 506
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [2]

:[1]
pushi.e 505
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 1

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[5]
pushi.e 0
pop.v.i self.h
pushi.e 520
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [16]

:[6]
push.v 520.hit_try
pushi.e 14
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.h

:[8]
push.v 520.hit_try
pushi.e 15
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
pop.v.i self.h

:[10]
push.v 520.hit_try
pushi.e 16
cmp.i.v EQ
bf [12]

:[11]
pushi.e 2
pop.v.i self.h

:[12]
push.v 520.hit_try
pushi.e 17
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2
pop.v.i self.h

:[14]
push.v 520.hit_try
pushi.e 23
cmp.i.v GTE
bf [16]

:[15]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[16]
push.v self.h
pushi.e 2
cmp.i.v NEQ
bf [18]

:[17]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[18]
push.v self.h
pushi.e 1
cmp.i.v NEQ
bf [20]

:[19]
pushi.e 3
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 20
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 3
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[20]
pushi.e 50
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]