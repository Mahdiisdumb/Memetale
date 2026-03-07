.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.sha
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.siner
push.i 16777215
pop.v.i self.blenda
push.i 32768
pop.v.i self.blendb
pushi.e 30
pop.v.i self.coolwidth
pushi.e 0
pop.v.i self.got
pushi.e 10
pop.v.i self.myspeed
pushi.e 186
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 0
pop.v.i self.defuse
push.d 0.1
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.movetimer
pushi.e 0
pop.v.i self.cc
pushi.e 0
pop.v.i self.dd
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.flasher
pushi.e 0
pop.v.i self.shudder

:[end]