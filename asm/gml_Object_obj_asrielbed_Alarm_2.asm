.localvar 0 arguments

:[0]
pushglb.v global.plot
pushi.e 24
cmp.i.v GTE
bf [2]

:[1]
push.v self.jump
pushi.e 5
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [13]

:[4]
pushi.e 31
pop.v.i global.typer
pushi.e 0
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
push.s "obj_asrielbed_87"@10250
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielbed_88"@10252
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_asrielbed_89"@10254
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e -5
pushi.e 7
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 5
pop.v.i global.typer
push.s "obj_asrielbed_93"@10256
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_asrielbed_94"@10258
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[6]
pushi.e 0
pushi.e 921
pushi.e 0
pop.v.i [array]self.idealvolume
pushi.e 0
pushi.e 921
pushi.e 1
pop.v.i [array]self.idealvolume
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 780
pushenv [8]

:[7]
push.i -999999
pop.v.i self.depth

:[8]
popenv [7]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [12]

:[9]
pushi.e 784
pushenv [11]

:[10]
push.i -9999999
pop.v.i self.depth

:[11]
popenv [10]

:[12]
pushi.e 5
pop.v.i self.jump

:[13]
push.v self.jump
pushi.e 5
cmp.i.v EQ
bf [15]

:[14]
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[15]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[16]
pushi.e 6
pop.v.i self.jump
pushi.e 0
pushi.e -1
pushi.e 1
pop.v.i [array]self.background_visible
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.background_visible
pushglb.v global.plot
pushi.e 20
cmp.i.v LT
bf [18]

:[17]
pushi.e 1
pushi.e -1
pushi.e 2
pop.v.i [array]self.background_visible

:[18]
pushi.e 3
pop.v.i global.facing
pushi.e 200
pop.v.i 1576.x
pushi.e 104
pop.v.i 1576.y
pushglb.v global.maxhp
pop.v.v global.hp
pushi.e 150
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [22]

:[19]
pushi.e 150
pushenv [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [20]

:[22]
pushi.e 148
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 0
pushi.e 921
pushi.e 0
pop.v.i [array]self.idealvolume
pushi.e 1
pushi.e 921
pushi.e 1
pop.v.i [array]self.idealvolume
pushi.e -5
pushi.e 103
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [24]

:[23]
pushglb.v global.plot
pushi.e 20
cmp.i.v LT
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e 1
pushi.e -5
pushi.e 103
pop.v.i [array]global.flag
pushi.e 850
conv.i.v
pushi.e 132
conv.i.v
pushi.e 142
conv.i.v
call.i instance_create(argc=3)
popz.v

:[27]
pushi.e 60
pushi.e -1
pushi.e 3
pop.v.i [array]self.alarm

:[end]