.localvar 0 arguments
.localvar 1 dosave 6539

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.reeled
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.orx
pushglb.v global.plot
pushi.e 100
cmp.i.v GT
bf [3]

:[1]
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 65
cmp.i.v EQ
bf [3]

:[2]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [12]

:[5]
pushi.e 0
pop.v.i self.orx
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [10]

:[6]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_ini_open(argc=1)
popz.v
pushi.e 0
conv.i.v
push.s "fun"@3079
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_read_real(argc=3)
pop.v.v self.srx
pushi.e 0
pop.v.i local.dosave
push.v self.srx
pushi.e 65
cmp.i.v EQ
bf [8]

:[7]
pushi.e 1
pop.v.i self.orx
pushi.e 0
pushi.e -5
pushi.e 5
pop.v.i [array]global.flag
pushi.e 0
conv.i.v
push.s "fun"@3079
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushi.e 1
pop.v.i local.dosave

:[8]
call.i ossafe_ini_close(argc=0)
popz.v
pushloc.v local.dosave
conv.v.b
bf [10]

:[9]
call.i ossafe_savedata_save(argc=0)
popz.v

:[10]
push.v self.orx
pushi.e 1
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.orx

:[12]
push.v self.orx
pushi.e 1
cmp.i.v EQ
bf [end]

:[13]
pushi.e 270
conv.i.v
call.i room_goto(argc=1)
popz.v

:[end]