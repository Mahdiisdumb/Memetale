.localvar 0 arguments

:[0]
pushi.e 315
pop.v.i self.x
pushi.e 50
pop.v.i self.y
pushi.e 0
pop.v.i self.pause
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.rely
pushi.e 0
pop.v.i self.relx
pushi.e 0
pop.v.i self.headrot
pushi.e 0
pop.v.i self.armrot_l
pushi.e 0
pop.v.i self.armrot_r
pushi.e 0
pop.v.i self.torsorot
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.aimage
pushi.e 1
pop.v.i self.normal
push.v self.x
pop.v.v self.startx
push.v self.y
pop.v.v self.starty
pushi.e 0
pop.v.i self.starcon
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.bladecon
pushi.e 0
pop.v.i self.specialarm
pushi.e 1
pop.v.i self.arm_alpha
pushi.e 0
pop.v.i self.heady
pushi.e 0
pop.v.i self.headx
pushi.e 0
pop.v.i self.guncon
pushi.e 0
pop.v.i self.gonercon
pushi.e 0
pop.v.i self.s_s
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.shrug
pushi.e 0
pop.v.i self.shrug_x
pushi.e 1
pop.v.i self.aligncon
pushi.e 1
pop.v.i self.specialnormal
pushi.e 0
pop.v.i self.n_siner
push.s "music/create.ogg"@2708
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.cr
push.s "music/sfx/sfx_spellcast.ogg"@2798
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.powersfx
pushi.e 0
pop.v.i self.sn
pushi.e 186
pushenv [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
popenv [1]
pushi.e -5
pushi.e 502
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [4]

:[3]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 0
pop.v.i self.specialnormal
pushi.e 0
pop.v.i self.aligncon

:[7]
pushi.e 0
pop.v.i self.darker
pushi.e 0
pop.v.i self.darker_x
pushi.e 0
pop.v.i self.u_gen
pushi.e 0
pop.v.i self.h_mode
pushi.e 0
pop.v.i self.transform
pushi.e 0
pop.v.i self.stetch
pushi.e -5
pushi.e 502
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [end]

:[8]
pushi.e 1
pop.v.i self.aimage

:[end]