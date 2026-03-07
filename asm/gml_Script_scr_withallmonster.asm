.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 3
cmp.i.v LT
bf [end]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monster
pushi.e 1
cmp.i.v EQ
bf [7]

:[4]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.monsterinstance
conv.v.i
pushenv [6]

:[5]
pushbltn.v self.argument1
pop.v.v self.whatiheard

:[6]
popenv [5]

:[7]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[end]