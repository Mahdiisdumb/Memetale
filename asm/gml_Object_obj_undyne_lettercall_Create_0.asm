.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.d
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "Won"@3070
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.won
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.won
pushi.e 1
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
pop.v.i self.d

:[2]
pushi.e -5
pushi.e 389
push.v [array]global.flag
pushi.e 3
cmp.i.v LT
bf [4]

:[3]
pushi.e 1
pop.v.i self.d

:[4]
pushglb.v global.kills
pushi.e 0
cmp.i.v GT
bf [6]

:[5]
pushi.e 1
pop.v.i self.d

:[6]
pushglb.v global.plot
pushi.e 198
cmp.i.v LTE
bf [8]

:[7]
pushi.e 1
pop.v.i self.d

:[8]
pushi.e -5
pushi.e 493
push.v [array]global.flag
pushi.e 8
cmp.i.v GTE
bf [10]

:[9]
pushi.e 1
pop.v.i self.d

:[10]
push.v self.d
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e -1
pop.v.i self.con
call.i instance_destroy(argc=0)
popz.v
exit.i

:[12]
pushi.e 12
pop.v.i self.image_yscale
pushbltn.v self.room
pushi.e 188
cmp.i.v EQ
bf [end]

:[13]
pushi.e 1
pop.v.i self.image_yscale
pushi.e 30
pop.v.i self.image_xscale

:[end]