.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.i
pushi.e 1
pop.v.i self.loop
pushi.e 0
pop.v.i self.noroom
pushi.e 999
pushi.e -5
pushbltn.v self.argument1
pushi.e 10
add.i.v
conv.v.i
pop.v.i [array]global.flag

:[1]
push.v self.loop
pushi.e 1
cmp.i.v EQ
bf [7]

:[2]
pushi.e -5
push.v self.i
pushbltn.v self.argument1
add.v.v
conv.v.i
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [4]

:[3]
pushbltn.v self.argument0
pushi.e -5
push.v self.i
pushbltn.v self.argument1
add.v.v
conv.v.i
pop.v.v [array]global.flag
b [7]

:[4]
push.v self.i
pushi.e 10
cmp.i.v EQ
bf [6]

:[5]
pushi.e 91
conv.i.v
call.i script_execute(argc=1)
popz.v
b [7]

:[6]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[7]
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