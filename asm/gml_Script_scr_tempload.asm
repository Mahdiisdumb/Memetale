.localvar 0 arguments

:[0]
pushglb.v global.filechoice
pop.v.v self.filechoicebk3
pushi.e 9
pop.v.i global.filechoice
pushi.e 65
conv.i.v
call.i script_execute(argc=1)
popz.v
push.v self.filechoicebk3
pop.v.v global.filechoice

:[end]