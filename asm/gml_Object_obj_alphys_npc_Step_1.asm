.localvar 0 arguments

:[0]
push.v self.d
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
call.i scr_depth(argc=0)
popz.v

:[2]
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [end]

:[3]
pushi.e 2
conv.i.v
pushi.e 110
conv.i.v
call.i script_execute(argc=2)
popz.v
call.i scr_npc_anim(argc=0)
popz.v

:[end]