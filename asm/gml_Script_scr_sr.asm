.localvar 0 arguments

:[0]
pushi.e 265
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushbltn.v self.argument0
pushi.e 4
cmp.i.v EQ
bf [3]

:[2]
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.argument0

:[3]
pushbltn.v self.argument1
pushi.e 3
cmp.i.v EQ
bf [5]

:[4]
pushi.e 2
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.argument1

:[5]
pushbltn.v self.argument2
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushbltn.v self.argument1
pushi.e 2
cmp.i.v NEQ
b [8]

:[7]
push.e 0

:[8]
bf [10]

:[9]
pushi.e 1
pop.v.i self.argument2

:[10]
pushbltn.v self.argument3
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pop.v.i self.argument3

:[12]
push.v 265.spearmax
pushi.e 1
add.i.v
pop.v.v 265.spearmax
pushbltn.v self.argument0
pushi.e 265
push.v self.i
conv.v.i
pop.v.v [array]self.speardir
pushbltn.v self.argument1
pushi.e 265
push.v self.i
conv.v.i
pop.v.v [array]self.speartype
pushbltn.v self.argument2
pushi.e 265
push.v self.i
conv.v.i
pop.v.v [array]self.timemod
pushbltn.v self.argument3
pushi.e 265
push.v self.i
conv.v.i
pop.v.v [array]self.speedmod
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i

:[end]