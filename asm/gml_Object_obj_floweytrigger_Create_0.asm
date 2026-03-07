.localvar 0 arguments

:[0]
pushi.e 50
pop.v.i self.image_xscale
pushi.e 0
pop.v.i self.conversation
pushglb.v global.plot
pushi.e 0
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v

:[2]
pushi.e 0
pop.v.i self.faketor
pushi.e 0
pop.v.i self.alter
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
call.i ossafe_ini_close(argc=0)
popz.v
push.v self.a
pushi.e 0
cmp.i.v GT
bt [5]

:[3]
push.v self.b
pushi.e 0
cmp.i.v GT
bt [5]

:[4]
push.v self.c
pushi.e 0
cmp.i.v GT
b [6]

:[5]
push.e 1

:[6]
bf [8]

:[7]
pushi.e 1
pop.v.i self.alter

:[8]
push.v self.alter
pushi.e 1
cmp.i.v EQ
bf [end]

:[9]
pushi.e 877
pushenv [11]

:[10]
pushi.e 0
pop.v.i self.visible

:[11]
popenv [10]

:[end]