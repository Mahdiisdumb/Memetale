.localvar 0 arguments

:[0]
pushglb.v global.weapon
pushi.e 47
cmp.i.v EQ
bf [2]

:[1]
pushbltn.v self.argument0
pushi.e 4
add.i.v
pushi.e 60
conv.i.v
call.i script_execute(argc=2)
popz.v
b [3]

:[2]
pushbltn.v self.argument0
pushi.e 60
conv.i.v
call.i script_execute(argc=2)
popz.v

:[3]
push.v self.recovered
pushi.e -5
pushi.e 8
pop.v.v [array]global.item
pushi.e 1
pushi.e -5
pushi.e 260
pop.v.i [array]global.flag
push.v self.maxedout
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
pushi.e 9999
pushi.e -5
pushi.e 8
pop.v.i [array]global.item

:[5]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "x"@2893
conv.s.v
pushi.e 11
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v

:[end]