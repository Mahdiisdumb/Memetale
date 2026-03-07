.localvar 0 arguments

:[0]
push.v self.fun
pushi.e 0
cmp.i.v EQ
bf [end]

:[1]
call.i scr_npc_anim(argc=0)
popz.v

:[end]