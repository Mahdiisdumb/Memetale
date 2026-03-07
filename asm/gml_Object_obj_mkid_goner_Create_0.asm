.localvar 0 arguments

:[0]
pushi.e 1475
pop.v.i self.dsprite
pushi.e 1476
pop.v.i self.usprite
pushi.e 1478
pop.v.i self.lsprite
pushi.e 1477
pop.v.i self.rsprite
pushi.e 1475
pop.v.i self.dtsprite
pushi.e 1476
pop.v.i self.utsprite
pushi.e 1478
pop.v.i self.ltsprite
pushi.e 1477
pop.v.i self.rtsprite
pushi.e 0
pop.v.i self.myinteract
pushi.e 3
pop.v.i self.facing
pushi.e 180
pop.v.i self.direction
pushi.e 0
pop.v.i self.talkedto
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.fun
pushbltn.v self.room
pushi.e 91
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.plot
pushi.e 110
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
pushi.e 0
pop.v.i self.type
pushi.e 0
pop.v.i self.gox
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 90
cmp.i.v GTE
bf [13]

:[6]
push.s "memetale.ini"@234
conv.s.v
call.i ossafe_file_exists(argc=1)
conv.v.b
bf [13]

:[7]
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
push.v self.fsx
pushi.e 90
cmp.i.v GTE
bf [9]

:[8]
pushi.e -5
pushi.e 5
push.v [array]global.flag
pushi.e 90
cmp.i.v GTE
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
pushi.e 1
pop.v.i self.gox
pushi.e 1
pop.v.i self.type

:[12]
call.i ossafe_ini_close(argc=0)
popz.v

:[13]
pushglb.v global.debug
pushi.e 1
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
pop.v.i self.gox

:[15]
push.v self.gox
pushi.e 0
cmp.i.v EQ
bf [17]

:[16]
call.i instance_destroy(argc=0)
popz.v

:[17]
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [end]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[end]