.localvar 0 arguments

:[0]
push.v self.canquit
pushi.e 1
cmp.i.v EQ
bf [end]

:[1]
push.v self.quit
pushi.e 20
cmp.i.v GT
bf [end]

:[2]
pushglb.v global.osflavor
pushi.e 2
cmp.i.v LTE
bf [end]

:[3]
call.i game_end(argc=0)
popz.v

:[end]