.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.image_yscale
pushi.e 100
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.conversation
pushi.e 0
pop.v.i self.q
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "Alter"@50031
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.a
pushi.e 0
conv.i.v
push.s "K"@47576
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.b
pushi.e 0
conv.i.v
push.s "SPECIALK"@47747
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.c
pushi.e 0
conv.i.v
push.s "alter2"@50037
conv.s.v
push.s "Flowey"@31516
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.d
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.a
pushi.e 0
cmp.i.v GT
bt [3]

:[1]
push.v self.b
pushi.e 0
cmp.i.v GT
bt [3]

:[2]
push.v self.c
pushi.e 0
cmp.i.v GT
b [4]

:[3]
push.e 1

:[4]
bf [6]

:[5]
pushi.e 1
pop.v.i self.q

:[6]
call.i scr_murderlv(argc=0)
pushi.e 2
cmp.i.v GTE
bf [8]

:[7]
pushi.e 0
pop.v.i self.q

:[8]
push.v self.d
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
pushi.e 1
pop.v.i self.q

:[10]
push.v self.q
pushi.e 1
cmp.i.v EQ
bf [14]

:[11]
pushi.e 877
pushenv [13]

:[12]
call.i instance_destroy(argc=0)
popz.v

:[13]
popenv [12]
call.i instance_destroy(argc=0)
popz.v

:[14]
pushglb.v global.plot
pushi.e 27
cmp.i.v GT
bf [18]

:[15]
pushi.e 877
pushenv [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
popenv [16]
call.i instance_destroy(argc=0)
popz.v

:[18]
pushi.e 0
pop.v.i self.dingus

:[end]