.localvar 0 arguments
.localvar 1 timer_x 7991

:[0]
push.v self.doomtime
pushi.e 30
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.dx
push.v self.doomtime
pushi.e 180
conv.i.d
div.d.v
call.i floor(argc=1)
pop.v.v self.dx2
pushglb.v global.inbattle
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
pushi.e 1
conv.i.v
call.i scr_setfont(argc=1)
popz.v
push.i 65535
conv.i.v
call.i draw_set_color(argc=1)
popz.v
pushi.e 500
pop.v.i local.timer_x
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [3]

:[2]
push.v local.timer_x
pushi.e 30
sub.i.v
pop.v.v local.timer_x

:[3]
push.v self.dx
pushi.e 120
cmp.i.v GTE
bf [5]

:[4]
pushi.e 1
pop.v.i self.truezero

:[5]
push.v self.truezero
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 120
push.v self.dx
sub.v.i
call.i string(argc=1)
push.s "mettnews_timer"@32214
conv.s.v
call.i scr_gettext(argc=2)
pushi.e 20
conv.i.v
pushloc.v local.timer_x
call.i draw_text(argc=3)
popz.v
b [end]

:[7]
pushi.e 255
conv.i.v
call.i draw_set_color(argc=1)
popz.v
push.s "0"@3159
conv.s.v
push.s "mettnews_timer"@32214
conv.s.v
call.i scr_gettext(argc=2)
pushi.e 20
conv.i.v
pushloc.v local.timer_x
call.i draw_text(argc=3)
popz.v

:[end]