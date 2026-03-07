.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.bb
push.v self.y
pop.v.v self.thisy
push.v self.x
pop.v.v self.thisx
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.lock
pushi.e 0
pop.v.i self.home
pushi.e 0
pop.v.i self.txspeed
pushi.e 0
pop.v.i self.tyspeed
pushi.e 0
pop.v.i self.l_timer
pushi.e 0
pop.v.i self.flash
pushi.e 0
pop.v.i self.meter
pushi.e 0
pop.v.i self.metercounter
pushi.e 0
pop.v.i self.unhinge
pushi.e 0
pop.v.i self.blast
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.ctimer
pushi.e 0
pop.v.i self.image_alpha
pushi.e 30
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
push.v self.x
push.v 570.x
sub.v.v
pop.v.v self.relx
push.v self.y
push.v 570.y
sub.v.v
pop.v.v self.rely
pushi.e 570
pop.v.i self.king
pushi.e 0
pop.v.i self.ks
push.v 744.y
pushi.e 8
add.i.v
push.v 744.x
pushi.e 8
add.i.v
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pushi.e 90
add.i.v
pop.v.v self.image_angle
pushi.e 0
pop.v.i self.col_o
push.s "music/sfx/sfx_a_bullet.ogg"@2788
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_b
push.s "music/sfx/sfx_a_target.ogg"@2787
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_t
push.s "music/sfx/sfx_rainbowbeam_1.ogg"@2802
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_l
push.s "music/sfx/sfx_segapower.ogg"@2800
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.sfx_p
pushi.e 0
pop.v.i self.h_mode
pushi.e 360
conv.i.v
call.i random(argc=1)
pop.v.v self.jr

:[end]