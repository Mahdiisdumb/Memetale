.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.anim
pushi.e 0
pop.v.i self.armrot
pushi.e 0
pop.v.i self.side
pushi.e 0
pop.v.i self.up
pushi.e 0
pop.v.i self.ucon
pushi.e 0
pop.v.i self.u_timer
pushi.e 0
pop.v.i self.bcon
pushi.e 0
pop.v.i self.ar_shake
pushi.e 0
pop.v.i self.cry
push.s "music/sfx/sfx_spellcast.ogg"@2798
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.psfx
push.s "music/sfx/sfx_segapower.ogg"@2800
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.seg
pushi.e 0
pop.v.i self.ps
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i self.bodyfader
pushi.e 0
pop.v.i self.pause
pushi.e 0
pop.v.i global.hope
pushi.e 0
pop.v.i self.darker
pushi.e 0
pop.v.i self.darker_x
pushi.e 0
pop.v.i self.u_gen

:[end]