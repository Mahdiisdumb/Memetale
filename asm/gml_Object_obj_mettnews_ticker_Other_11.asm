.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.tx
pushi.e 1228
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
pushi.e 120
push.v 1228.dx
sub.v.i
pop.v.v self.dmx
b [3]

:[2]
pushi.e 0
pop.v.i self.dmx

:[3]
push.v self.dmx
call.i string(argc=1)
push.s "mettnews_ticker_doom_timeleft"@32196
conv.s.v
call.i scr_gettext(argc=2)
pop.v.v self.stringer
push.v self.doomx
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v self.stringer
push.s "mettnews_ticker_doom1"@32200
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer

:[5]
push.v self.doomx
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.v self.stringer
pushi.e 6
pushi.e -5
pushi.e 395
push.v [array]global.flag
sub.v.i
call.i string(argc=1)
push.s "mettnews_ticker_doom_bombsleft"@32198
conv.s.v
call.i scr_gettext(argc=2)
add.v.v
pop.v.v self.stringer

:[7]
push.v self.doomx
pushi.e 2
cmp.i.v EQ
bf [9]

:[8]
push.v self.stringer
push.s "mettnews_ticker_doom2"@32202
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer

:[9]
push.v self.doomx
pushi.e 3
cmp.i.v EQ
bf [11]

:[10]
push.v self.stringer
pushi.e 6
pushi.e -5
pushi.e 395
push.v [array]global.flag
sub.v.i
call.i string(argc=1)
push.s "mettnews_ticker_doom_bombsleft"@32198
conv.s.v
call.i scr_gettext(argc=2)
add.v.v
pop.v.v self.stringer

:[11]
push.v self.doomx
pushi.e 4
cmp.i.v EQ
bf [13]

:[12]
push.v self.stringer
push.s "mettnews_ticker_doom3"@32204
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer

:[13]
push.v self.doomx
pushi.e 5
cmp.i.v EQ
bf [15]

:[14]
push.v self.stringer
pushi.e 6
pushi.e -5
pushi.e 395
push.v [array]global.flag
sub.v.i
call.i string(argc=1)
push.s "mettnews_ticker_doom_bombsleft"@32198
conv.s.v
call.i scr_gettext(argc=2)
add.v.v
pop.v.v self.stringer

:[15]
push.v self.doomx
pushi.e 6
cmp.i.v EQ
bf [17]

:[16]
push.v self.stringer
push.s "mettnews_ticker_doom4"@32206
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer

:[17]
push.v self.doomx
pushi.e 7
cmp.i.v EQ
bf [19]

:[18]
push.v self.stringer
pushi.e 6
pushi.e -5
pushi.e 395
push.v [array]global.flag
sub.v.i
call.i string(argc=1)
push.s "mettnews_ticker_doom_bombsleft"@32198
conv.s.v
call.i scr_gettext(argc=2)
add.v.v
pop.v.v self.stringer

:[19]
push.v self.doomx
pushi.e 8
cmp.i.v EQ
bf [21]

:[20]
push.v self.stringer
push.s "mettnews_ticker_doom5"@32208
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer

:[21]
push.v self.doomx
pushi.e 9
cmp.i.v EQ
bf [23]

:[22]
push.v self.stringer
push.s "mettnews_ticker_doom6"@32210
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer

:[23]
push.v self.doomx
pushi.e 10
cmp.i.v EQ
bf [25]

:[24]
push.v self.stringer
push.s "mettnews_ticker_doom7"@32212
conv.s.v
call.i scr_gettext(argc=1)
add.v.v
pop.v.v self.stringer

:[25]
push.v self.doomx
pushi.e 1
add.i.v
pop.v.v self.doomx
pushi.e 0
pop.v.i self.doomtimer

:[end]