.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.d 0.2
pop.v.d self.argument0

:[2]
pushbltn.v self.argument1
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i self.argument0

:[4]
pushbltn.v self.argument2
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
push.i 16777215
pop.v.i self.argument0

:[6]
pushi.e 119
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.g
pushbltn.v self.argument2
push.v self.g
conv.v.i
pop.v.v [stacktop]self.color
pushbltn.v self.argument1
push.v self.g
conv.v.i
pop.v.v [stacktop]self.amt
pushbltn.v self.argument0
push.v self.g
conv.v.i
pop.v.v [stacktop]self.fadespeed

:[end]