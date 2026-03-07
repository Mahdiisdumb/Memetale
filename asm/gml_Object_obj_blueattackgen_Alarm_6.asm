.localvar 0 arguments

:[0]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 1
pop.v.i 233.truefight
push.v self.blcon
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]
pushi.e 1
conv.i.v
push.d 0.8
conv.d.v
pushglb.v global.batmusic
call.i caster_loop(argc=3)
popz.v
pushi.e 2
pop.v.i global.turntimer
call.i instance_destroy(argc=0)
popz.v
push.s "obj_blueattackgen_60"@10780
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pop.v.i 233.dontcancel
exit.i

:[4]
pushi.e 2
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm

:[end]