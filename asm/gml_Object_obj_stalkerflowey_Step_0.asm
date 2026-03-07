.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
pushi.e 18
conv.i.v
pushi.e 37
conv.i.v
pushi.e 116
conv.i.v
call.i script_execute(argc=3)
popz.v
push.v self.onscreen
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e -1
cmp.i.v EQ
bf [end]

:[2]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]