.localvar 0 arguments

:[0]
pushbltn.v self.argument0
pop.v.v self.xdiff
pushbltn.v self.argument1
pop.v.v self.ydiff
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
pop.v.v self.thatchbonus
pushbltn.v self.argument9
pop.v.v self.bulletnumber
pushbltn.v self.argument10
pop.v.v global.bulletappearance
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
push.v self.bulletnumber
cmp.v.v LTE
bf [end]

:[2]
pushi.e -5
pushi.e 6
dup.i 1
push.v [array]global.bulletvariable
pushbltn.v self.argument2
add.v.v
pop.i.v [array]global.bulletvariable
pushi.e -5
pushi.e 7
dup.i 1
push.v [array]global.bulletvariable
pushbltn.v self.argument8
push.v self.i
mul.v.v
add.v.v
pop.i.v [array]global.bulletvariable
pushi.e 683
conv.i.v
push.v self.y
push.v self.i
push.v self.ydiff
mul.v.v
add.v.v
push.v self.x
push.v self.i
push.v self.xdiff
mul.v.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [4]

:[3]
pushi.e 5
pop.v.i self.dmg

:[4]
popenv [3]
pushi.e -5
pushi.e 6
dup.i 1
push.v [array]global.bulletvariable
pushbltn.v self.argument2
pushi.e 2
mul.i.v
sub.v.v
pop.i.v [array]global.bulletvariable
pushi.e -5
pushi.e 7
dup.i 1
push.v [array]global.bulletvariable
pushbltn.v self.argument8
push.v self.i
mul.v.v
pushi.e 2
mul.i.v
sub.v.v
pop.i.v [array]global.bulletvariable
pushi.e 683
conv.i.v
push.v self.y
push.v self.i
push.v self.ydiff
mul.v.v
add.v.v
push.v self.x
push.v self.i
push.v self.xdiff
mul.v.v
add.v.v
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
conv.v.i
pushenv [6]

:[5]
pushi.e 5
pop.v.i self.dmg

:[6]
popenv [5]
pushbltn.v self.argument6
pushi.e -5
pushi.e 6
pop.v.v [array]global.bulletvariable
pushbltn.v self.argument7
pushi.e -5
pushi.e 7
pop.v.v [array]global.bulletvariable
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[end]