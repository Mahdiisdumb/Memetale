.localvar 0 arguments

:[0]
push.v self.xstart
pushi.e -1
pushi.e 0
push.v [array]self.view_xview
sub.v.v
pop.v.v self.stayx
push.v self.ystart
pushi.e -1
pushi.e 0
push.v [array]self.view_yview
sub.v.v
pop.v.v self.stayy
pushi.e 1
pop.v.i self.on
pushi.e 1
pushi.e 2
conv.i.v
call.i random(argc=1)
pushi.e -1
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
mul.v.v
add.v.i
pop.v.v self.ang
push.v self.ang
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
push.v self.ang
pushi.e 2
div.i.v
pop.v.v self.ang

:[2]
pushi.e 0
pop.v.i self.tx
push.s "mettnews_ticker_1"@32176
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.stringer
push.v self.stringer
push.s "mettnews_ticker_2"@32178
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer
push.v self.stringer
push.s "mettnews_ticker_3"@32180
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer
push.v self.stringer
push.s "mettnews_ticker_4"@32182
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer
push.v self.stringer
push.s "mettnews_ticker_5"@32184
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer
push.v self.stringer
push.s "mettnews_ticker_6"@32186
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer
push.v self.stringer
push.s "mettnews_ticker_7"@32188
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer
push.v self.stringer
push.s "mettnews_ticker_8"@32190
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer
push.v self.stringer
push.s "mettnews_ticker_9"@32192
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer
pushi.e 1
pop.v.i self.write
pushi.e 0
pop.v.i self.doom
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushi.e 1576
pop.v.i self.thischara
pushi.e 0
pop.v.i self.timertimer
pushi.e 0
pop.v.i self.voff
pushi.e 0
pop.v.i self.doomtimer
pushi.e 0
pop.v.i self.doomx

:[end]