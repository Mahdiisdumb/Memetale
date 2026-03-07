.localvar 0 arguments

:[0]
pushi.e 90
pop.v.i self.wx
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [2]

:[1]
push.v self.wx
pushi.e 16
sub.i.v
pop.v.v self.wx

:[2]
pushi.e 280
pop.v.i self.wy
pushi.e -1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 16777215
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 2
pop.v.i self.a
pushi.e 3
pop.v.i self.b
push.s "obj_FinalWriter_34"@10162
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.string0
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.active
pushi.e 1
pop.v.i self.at
pushi.e 6
pop.v.i self.typespeed
push.s "music/sfx/sfx_a_gigatalk.ogg"@2792
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.w_sfx

:[end]