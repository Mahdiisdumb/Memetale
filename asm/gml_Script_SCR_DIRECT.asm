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
pop.v.v self.bulletnumber
pushbltn.v self.argument9
pop.v.v global.bulletappearance
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.bulletnumber
cmp.v.v LTE
bf [end]

:[2]
pushi.e 682
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]