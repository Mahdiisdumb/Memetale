.localvar 0 arguments
.localvar 1 text_x 10626

:[0]
pushi.e 1365
conv.i.v
pushi.e 170
conv.i.v
pushi.e 188
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.tor
pushi.e 2561
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.sprite_index
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 1365
conv.i.v
pushi.e 365
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.asg
pushi.e 2559
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.d 0.1
push.v self.asg
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 1
push.v self.asg
conv.v.i
pop.v.i [stacktop]self.visible
pushi.e 10
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm
push.d 0.2
pop.v.d self.image_speed
pushi.e 6
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.timer
pushi.e -700
pop.v.i self.x
pushi.e -180
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 0
pop.v.i self.td
pushi.e 15
pop.v.i local.text_x
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
pushi.e -2
pop.v.i local.text_x

:[2]
pushi.e 1695
conv.i.v
pushi.e 140
conv.i.v
pushloc.v local.text_x
call.i instance_create(argc=3)
pop.v.v self.t3
push.s "castroll_name_toriel"@32962
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t3
conv.v.i
pop.v.v [stacktop]self.text
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [4]

:[3]
pushi.e -3
push.v self.t3
conv.v.i
pop.v.i [stacktop]self.text_xofs

:[4]
push.s "castroll_by_toby"@31808
conv.s.v
call.i scr_gettext(argc=1)
push.v self.t3
conv.v.i
pop.v.v [stacktop]self.text2
call.i scr_loadendsong(argc=0)
popz.v
pushi.e -5
pushi.e 5
push.v [array]global.endsong
call.i caster_stop(argc=1)
popz.v
pushi.e -5
pushi.e 6
push.v [array]global.endsong
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e -5
pushi.e 7
push.v [array]global.endsong
call.i caster_play(argc=3)
popz.v
push.d 0.9
pop.v.d self.vol
pushi.e 0
pop.v.i global.inbattle

:[end]