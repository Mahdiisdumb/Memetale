.localvar 0 arguments

:[0]
push.v self.doom
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.s "mettnews_ticker_doom_start"@32194
conv.s.v
call.i scr_gettext(argc=1)
pop.v.v self.stringer

:[end]