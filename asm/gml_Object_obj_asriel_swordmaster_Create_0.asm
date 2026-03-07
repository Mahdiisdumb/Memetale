.localvar 0 arguments

:[0]
push.v self.x
pop.v.v self.thisx
push.v self.y
pop.v.v self.thisy
pushi.e 592
conv.i.v
push.v 570.y
pushi.e 35
add.i.v
push.v 570.x
pushi.e 36
add.i.v
call.i instance_create(argc=3)
pop.v.v self.sword_b
pushi.e 592
conv.i.v
push.v 570.y
pushi.e 35
add.i.v
push.v 570.x
pushi.e 36
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.sword_a
pushi.e 0
pop.v.i self.sf
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.lastwhich
pushi.e 0
pop.v.i self.lastwhichwhich
pushi.e 0
pop.v.i self.times
pushi.e 570
pop.v.i self.king
pushi.e 0
pop.v.i self.freakcon
push.s "music/sfx/sfx_a_pullback.ogg"@2790
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_pb
push.s "music/sfx_cinematiccut.ogg"@2720
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_cut
push.s "music/sfx/sfx_segapower2.ogg"@2801
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_bc
push.s "music/sfx/sfx_sparkles.ogg"@2795
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_spk
push.s "music/sfx/sfx_a_swordappear.ogg"@2789
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_ap
push.s "music/sfx/sfx_a_grab.ogg"@2793
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_grab
push.s "music/sfx_voice_jafe.ogg"@2734
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_jafe
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.sfx_ap
call.i caster_play(argc=3)
popz.v
pushi.e 0
pop.v.i self.last
pushi.e 0
pop.v.i self.never
pushi.e 0
pop.v.i self.h_mode

:[end]