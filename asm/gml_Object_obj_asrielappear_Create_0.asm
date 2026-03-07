.localvar 0 arguments

:[0]
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.counter
pushi.e 0
pop.v.i self.flasher
pushi.e 0
pop.v.i self.fl
pushi.e 1
pop.v.i global.inbattle
pushi.e 0
conv.i.v
call.i scr_enable_screen_border(argc=1)
popz.v

:[end]