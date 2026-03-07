.localvar 0 arguments
.localvar 1 dosave 1050

:[0]
pushi.e 1307
pop.v.i self.dsprite
pushi.e 1307
pop.v.i self.usprite
pushi.e 1307
pop.v.i self.lsprite
pushi.e 1307
pop.v.i self.rsprite
pushi.e 1307
pop.v.i self.dtsprite
pushi.e 1307
pop.v.i self.utsprite
pushi.e 1307
pop.v.i self.ltsprite
pushi.e 1307
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.facing
pushi.e 0
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.gox
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 63
cmp.i.v EQ
bf [9]

:[1]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [9]

:[2]
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
pop.v.v self.fsx
pushi.e 0
pop.v.i local.dosave
push.v self.fsx
pushi.e 63
cmp.i.v EQ
bf [4]

:[3]
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 63
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i self.gox
pushi.e 1
pop.v.i self.type
pushi.e 0
conv.i.v
push.s "fun"@3079
conv.s.v
push.s "General"@3071
conv.s.v
call.i ini_write_real(argc=3)
popz.v
pushi.e 0
pushi.e -5
pushi.e 5
pop.v.i [array]global.flag
pushi.e 1
pop.v.i local.dosave

:[7]
call.i ossafe_ini_close(argc=0)
popz.v
pushloc.v local.dosave
conv.v.b
bf [9]

:[8]
call.i ossafe_savedata_save(argc=0)
popz.v

:[9]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i choose(argc=2)
pop.v.v self.choos
push.v self.choos
pushi.e 1
cmp.i.v NEQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.gox

:[11]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 2
pop.v.i self.gox

:[13]
push.v self.gox
pushi.e 0
cmp.i.v EQ
bf [15]

:[14]
call.i instance_destroy(argc=0)
popz.v

:[15]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
call.i scr_murderlv(argc=0)
pushi.e 12
cmp.i.v GTE
bf [end]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[end]