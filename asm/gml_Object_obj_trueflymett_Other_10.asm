.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 16
cmp.i.v LT
bf [8]

:[2]
push.v self.i
push.v self.currentideal
cmp.v.v NEQ
bf [4]

:[3]
push.v self.i
push.v self.currentideal
pushi.e 1
add.i.v
cmp.v.v NEQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1182
conv.i.v
push.v self.y
pushi.e 20
add.i.v
push.v self.x
pushi.e 13
add.i.v
call.i instance_create(argc=3)
pop.v.v self.sb
push.v self.i
push.v self.sb
conv.v.i
pop.v.v [stacktop]self.idealspot

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[8]
push.v self.currentideal
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e 1
conv.i.v
pushi.e -1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.v
pop.v.v self.currentideal
push.v self.currentideal
pushi.e 1
cmp.i.v LT
bf [10]

:[9]
push.v self.currentideal
pushi.e 2
add.i.v
pop.v.v self.currentideal

:[10]
push.v self.currentideal
pushi.e 14
cmp.i.v GT
bf [end]

:[11]
push.v self.currentideal
pushi.e 2
sub.i.v
pop.v.v self.currentideal

:[end]