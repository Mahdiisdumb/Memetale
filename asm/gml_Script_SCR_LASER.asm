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
pushbltn.v self.argument3
pushi.e -5
pushi.e 3
pop.v.v [array]global.bulletvariable
pushbltn.v self.argument4
pushi.e -5
pushi.e 4
pop.v.v [array]global.bulletvariable
pushbltn.v self.argument5
pushi.e -5
pushi.e 5
pop.v.v [array]global.bulletvariable
pushbltn.v self.argument6
pushi.e -5
pushi.e 6
pop.v.v [array]global.bulletvariable
pushbltn.v self.argument7
pushi.e -5
pushi.e 7
pop.v.v [array]global.bulletvariable
pushbltn.v self.argument8
pushi.e -5
pushi.e 8
pop.v.v [array]global.bulletvariable
pushbltn.v self.argument9
pop.v.v global.bulletappearance
pushi.e 685
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[end]