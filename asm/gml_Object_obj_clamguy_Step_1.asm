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
call.i scr_npc_anim(argc=0)
popz.v
push.v self.myinteract
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
pushi.e 2060
pop.v.i self.sprite_index
b [end]

:[2]
pushi.e 2059
pop.v.i self.sprite_index

:[end]