.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i global.inbattle
pushi.e 2
pop.v.i global.facing
pushi.e 0
pushi.e -5
pushi.e 20
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.doomcon
pushi.e 8
pop.v.i self.shudder
pushi.e 1
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 0
pop.v.i 758.visible
pushi.e 0
pop.v.i 749.visible
pushi.e 80
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i 749.move
push.v 749.x
pop.v.v self.memx
push.v 749.y
pop.v.v self.memy
push.s "music/f_wind2.ogg"@2766
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.wind
push.d 0.8
conv.d.v
push.d 0.8
conv.d.v
push.v self.wind
call.i caster_loop(argc=3)
popz.v
push.d 0.8
pop.v.d self.vol
pushi.e 0
pop.v.i global.border
call.i SCR_BORDERSETUP(argc=0)
popz.v
pushi.e 0
pop.v.i self.writing
pushi.e 0
pop.v.i self.con
pushi.e -1
pop.v.i self.flag20_laststr
pushi.e 0
pop.v.i self.fader
pushi.e 0
conv.i.v
call.i scr_enable_screen_border(argc=1)
popz.v

:[end]