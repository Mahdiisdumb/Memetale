.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.con
pushi.e 180
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [4]

:[3]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i global.facing

:[4]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [9]

:[5]
pushi.e 762
pop.v.i global.msc
pushi.e 60
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e -5
pushi.e 457
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 762
pop.v.i global.msc
b [8]

:[7]
pushi.e 764
pop.v.i global.msc

:[8]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 3
pop.v.i self.con

:[9]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [11]

:[10]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 11
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [16]

:[15]
pushi.e 2
pop.v.i global.facing

:[16]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [18]

:[17]
push.v self.asg
conv.v.i
push.v [stacktop]self.rsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 13
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[18]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [20]

:[19]
push.v self.asg
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.asg
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 15
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[20]
push.v self.con
pushi.e 16
cmp.i.v EQ
bf [22]

:[21]
pushi.e 60
pop.v.i global.typer
pushi.e 7
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 0
pop.v.i global.msc
push.s "obj_barrierevent_145"@10670
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 17
pop.v.i self.con

:[22]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [24]

:[23]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [27]

:[26]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1338
conv.i.v
pushi.e 220
conv.i.v
pushi.e 60
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.h
push.i 32768
pushi.e -1
pushi.e 0
push.v [array]self.h
conv.v.i
pop.v.i [stacktop]self.image_blend
pushi.e 1338
conv.i.v
pushi.e 220
conv.i.v
pushi.e 80
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.h
push.i 65535
pushi.e -1
pushi.e 1
push.v [array]self.h
conv.v.i
pop.v.i [stacktop]self.image_blend
pushi.e 1338
conv.i.v
pushi.e 220
conv.i.v
pushi.e 100
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.h
push.i 4235519
pushi.e -1
pushi.e 2
push.v [array]self.h
conv.v.i
pop.v.i [stacktop]self.image_blend
pushi.e 1338
conv.i.v
pushi.e 220
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.h
pushi.e 1338
conv.i.v
pushi.e 220
conv.i.v
pushi.e 200
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 4
pop.v.v [array]self.h
push.i 8388736
pushi.e -1
pushi.e 4
push.v [array]self.h
conv.v.i
pop.v.i [stacktop]self.image_blend
pushi.e 1338
conv.i.v
pushi.e 220
conv.i.v
pushi.e 220
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 5
pop.v.v [array]self.h
push.i 16711680
pushi.e -1
pushi.e 5
push.v [array]self.h
conv.v.i
pop.v.i [stacktop]self.image_blend
pushi.e 1338
conv.i.v
pushi.e 220
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
pushi.e -1
pushi.e 6
pop.v.v [array]self.h
push.i 16776960
pushi.e -1
pushi.e 6
push.v [array]self.h
conv.v.i
pop.v.i [stacktop]self.image_blend
pushi.e 18
pop.v.i self.con
pushi.e 150
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[27]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [29]

:[28]
pushi.e 0
pushi.e -5
pushi.e 15
pop.v.i [array]global.flag
pushi.e 1
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 100
pop.v.i global.battlegroup
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 20
pop.v.i self.con

:[29]
push.v self.con
pushi.e 40
cmp.i.v EQ
bf [31]

:[30]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [32]

:[31]
push.e 0

:[32]
bf [end]

:[33]
pushi.e 815
conv.i.v
push.v 1576.y
pushi.e 15
add.i.v
push.v 1576.x
call.i instance_create(argc=3)
popz.v
pushi.e 41
pop.v.i self.con

:[end]