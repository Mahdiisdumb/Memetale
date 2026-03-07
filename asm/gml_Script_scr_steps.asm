.localvar 0 arguments

:[0]
pushbltn.v self.argument3
pushi.e -5
pushi.e 200
pop.v.v [array]global.flag
pushbltn.v self.argument2
pushi.e -5
pushbltn.v self.argument3
conv.v.i
push.v [array]global.flag
sub.v.v
pushi.e 0
cmp.i.v GT
bf [4]

:[1]
pushbltn.v self.argument2
pushbltn.v self.argument2
pushi.e -5
pushbltn.v self.argument3
conv.v.i
push.v [array]global.flag
sub.v.v
div.v.v
pop.v.v self.populationfactor
push.v self.populationfactor
pushi.e 8
cmp.i.v GT
bf [3]

:[2]
pushi.e 8
pop.v.i self.populationfactor

:[3]
pushbltn.v self.argument0
pushbltn.v self.argument1
call.i random(argc=1)
call.i round(argc=1)
add.v.v
push.v self.populationfactor
mul.v.v
pop.v.v self.steps
b [end]

:[4]
push.v self.alldead
pushi.e 0
cmp.i.v EQ
bt [6]

:[5]
push.v self.alldead
pushi.e 1
cmp.i.v EQ
b [7]

:[6]
push.e 1

:[7]
bf [9]

:[8]
pushi.e 20
pop.v.i self.steps
b [10]

:[9]
pushbltn.v self.argument0
pushbltn.v self.argument1
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
add.v.v
pushi.e 5
mul.i.v
pop.v.v self.steps

:[10]
push.v self.alldead
pushi.e 0
cmp.i.v EQ
bf [end]

:[11]
pushi.e 1
pop.v.i self.alldead

:[end]