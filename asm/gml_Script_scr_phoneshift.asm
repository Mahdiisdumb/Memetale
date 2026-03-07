.localvar 0 arguments

:[0]
pushbltn.v self.argument1
pushi.e -5
pushi.e 8
pop.v.v [array]global.phone
pushbltn.v self.argument0
pop.v.v self.i

:[1]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [3]

:[2]
pushi.e -5
push.v self.i
pushi.e 1
add.i.v
conv.v.i
push.v [array]global.phone
pushi.e -5
push.v self.i
conv.v.i
pop.v.v [array]global.phone
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 74
conv.i.v
call.i script_execute(argc=1)
popz.v

:[end]