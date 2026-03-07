.localvar 0 arguments

:[0]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
push.v self.blcon
conv.v.i
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
push.v self.image_alpha
push.d 0.1
cmp.d.v GT
bf [6]

:[5]
push.v self.image_alpha
push.d 0.05
sub.d.v
pop.v.v self.image_alpha
pushi.e 1
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
b [end]

:[6]
pushglb.v global.batmusic
call.i caster_stop(argc=1)
popz.v
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v
pushi.e 1
pop.v.i global.typer
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.s "obj_napstablook_189"@32832
conv.s.v
call.i scr_gettext(argc=1)
pushi.e 0
conv.i.v
pushi.e 151
conv.i.v
call.i script_execute(argc=5)
popz.v
pushi.e 1
pushi.e -1
pushi.e 11
pop.v.i [array]self.alarm

:[end]