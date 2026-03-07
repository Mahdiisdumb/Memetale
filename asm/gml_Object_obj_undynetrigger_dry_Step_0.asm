.localvar 0 arguments

:[0]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 92
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1119
conv.i.v
pushi.e 60
conv.i.v
pushi.e -40
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.undyne
pushi.e 1515
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.rsprite
pushi.e 1517
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.dsprite
pushi.e 1516
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.lsprite
pushi.e 1522
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.usprite
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 2
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[2]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 4
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [8]

:[5]
push.v self.walked
pushi.e 1
add.i.v
pop.v.v self.walked
push.v self.walked
pushi.e 3
cmp.i.v LT
bf [7]

:[6]
pushi.e 2
pop.v.i self.con
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.2
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
b [8]

:[7]
pushi.e 7
pop.v.i self.con

:[8]
push.v self.con
pushi.e 7
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 5
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 37
pop.v.i global.typer
push.s "obj_undynetrigger_dry_122"@29683
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_undynetrigger_dry_123"@29685
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 0
pop.v.i global.msc
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 8
pop.v.i self.con

:[10]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [12]

:[11]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [13]

:[12]
push.e 0

:[13]
bf [15]

:[14]
push.d 0.5
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.hspeed
push.d 0.1
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 9
pop.v.i self.con

:[15]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 0
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 11
pop.v.i self.con

:[17]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [21]

:[18]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 1297
conv.i.v
push.v self.undyne
conv.v.i
push.v [stacktop]self.y
push.v self.undyne
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.undyne2
push.v self.undyne
conv.v.i
pushenv [20]

:[19]
call.i instance_destroy(argc=0)
popz.v

:[20]
popenv [19]
pushi.e 13
pop.v.i self.con

:[21]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [end]

:[22]
pushi.e 0
pushi.e -5
pushi.e 17
pop.v.i [array]global.flag
pushi.e 0
pop.v.i global.interact
pushi.e 122
pop.v.i global.plot
pushi.e 2
pushi.e -5
pushi.e 350
pop.v.i [array]global.flag
call.i instance_destroy(argc=0)
popz.v

:[end]