.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i global.facechoice
pushbltn.v self.argument0
pop.v.v global.msc
pushbltn.v self.argument1
push.s "x"@2893
cmp.s.v NEQ
bf [2]

:[1]
pushbltn.v self.argument1
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[2]
pushbltn.v self.argument2
pushi.e 0
cmp.i.v NEQ
bf [4]

:[3]
pushbltn.v self.argument2
pop.v.v global.facechoice

:[4]
pushglb.v global.inbattle
pushi.e 0
cmp.i.v EQ
bf [8]

:[5]
pushi.e 5
pop.v.i global.typer
pushbltn.v self.argument3
pushi.e 0
cmp.i.v NEQ
bf [7]

:[6]
pushbltn.v self.argument3
pop.v.v global.typer

:[7]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[8]
pushglb.v global.inbattle
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
pushi.e 784
pushenv [11]

:[10]
pushi.e 3
pop.v.i self.halt

:[11]
popenv [10]
pushi.e 1
pop.v.i global.typer
pushbltn.v self.argument3
pushi.e 0
cmp.i.v NEQ
bf [13]

:[12]
pushbltn.v self.argument3
pop.v.v global.typer

:[13]
pushi.e 784
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
call.i instance_create(argc=3)
popz.v

:[end]