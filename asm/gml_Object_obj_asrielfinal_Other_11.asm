.localvar 0 arguments

:[0]
push.s "obj_asrielfinal_976"@10410
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielfinal_977"@10412
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushglb.v global.hp
pushglb.v global.maxhp
cmp.v.v LT
bf [end]

:[1]
pushglb.v global.maxhp
pop.v.v global.hp
pushi.e 156
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]