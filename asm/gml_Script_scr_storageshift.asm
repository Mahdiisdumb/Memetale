.localvar 0 arguments

:[0]
pushbltn.v self.argument1
pushi.e -5
pushbltn.v self.argument2
pushi.e 10
add.i.v
conv.v.i
pop.v.v [array]global.flag
pushbltn.v self.argument0
pop.v.v self.i

:[1]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [3]

:[2]
pushi.e -5
push.v self.i
pushbltn.v self.argument2
add.v.v
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.flag
pushi.e -5
push.v self.i
pushbltn.v self.argument2
add.v.v
conv.v.i
pop.v.v [array]global.flag
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 79
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 300
conv.i.v
pushi.e 75
conv.i.v
call.i script_execute(argc=2)
popz.v

:[end]