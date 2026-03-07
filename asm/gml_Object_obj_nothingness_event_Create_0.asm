.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.skip
pushi.e 0
pop.v.i self.con
pushi.e 18000
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.s "music/f_wind2.ogg"@2766
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.wind
push.d 0.7
conv.d.v
push.d 0.8
conv.d.v
push.v self.wind
call.i caster_loop(argc=3)
popz.v
pushi.e 0
pop.v.i 1575.canquit
pushi.e 1576
conv.i.v
pushi.e -20
conv.i.v
pushi.e -20
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mc
pushi.e 0
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.visible
push.s " "@18
conv.s.v
call.i window_set_caption(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i scr_enable_screen_border(argc=1)
popz.v

:[end]