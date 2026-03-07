.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 1666
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
call.i scr_floweybodysave(argc=0)
popz.v
pushi.e 25
pop.v.i self.tvmode
push.d 0.5
pop.v.d self.size
pushi.e 0
pop.v.i self.anim
pushi.e 0
pop.v.i self.anim2
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.animchoice
push.d 0.25
pop.v.d self.animspeed
push.v self.animchoice
pop.v.v self.anim
push.d 0.5
pop.v.d self.image_speed
pushi.e 0
pop.v.i self.animtimer
push.v self.x
pop.v.v self.remx
pushi.e 0
pop.v.i self.shudder
pushi.e 0
pop.v.i self.shuddercounter
pushi.e 0
pop.v.i self.flasheron
pushi.e 16
pop.v.i self.tt
pushi.e 0
pop.v.i self.anim3
pushi.e 0
pop.v.i self.anim4
pushi.e 0
pop.v.i self.anim5
pushi.e 0
pop.v.i self.anim6
pushi.e 0
pop.v.i self.overnoiser
pushglb.v global.fplot
pushi.e 1
cmp.i.v GT
bf [end]

:[1]
pushi.e 26
pop.v.i self.tvmode

:[end]