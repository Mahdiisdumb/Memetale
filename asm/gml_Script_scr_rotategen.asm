.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pushi.e -5
pushi.e 0
pop.v.v [array]global.bulletvariable
pushbltn.v self.argument1
pushi.e -5
pushi.e 1
pop.v.v [array]global.bulletvariable
pushbltn.v self.argument2
pushi.e -5
pushi.e 2
pop.v.v [array]global.bulletvariable
pushi.e 702
conv.i.v
pushbltn.v self.argument4
pushbltn.v self.argument3
call.i instance_create(argc=3)
pop.v.v self.gen

:[end]