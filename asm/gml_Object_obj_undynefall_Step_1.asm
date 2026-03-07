.localvar 0 arguments

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
call.i scr_npc_anim(argc=0)
popz.v
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i global.interact
push.d 10.1
pop.v.d self.con
pushi.e 1
pop.v.i self.w_active
push.v 1576.x
pop.v.v self.thisx
push.v self.thisx
pop.v.v self.xx

:[5]
push.v self.con
push.d 10.1
cmp.d.v EQ
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact

:[7]
push.v self.con
pushi.e 11
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i global.interact
pushi.e 12
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[9]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i global.interact

:[11]
push.v self.con
pushi.e 13
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.shakify
pushi.e 14
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[13]
push.v self.con
pushi.e 14
cmp.i.v EQ
bf [15]

:[14]
pushi.e 1
pop.v.i global.interact

:[15]
push.v self.con
pushi.e 15
cmp.i.v EQ
bf [17]

:[16]
pushi.e 0
pop.v.i self.shakify
pushi.e 16
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
pushi.e 17
cmp.i.v EQ
bf [19]

:[18]
pushi.e 3
pop.v.i self.shakify
pushi.e 18
pop.v.i self.con
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[19]
push.v self.con
pushi.e 19
cmp.i.v EQ
bf [21]

:[20]
pushi.e 0
pop.v.i self.shakify
pushi.e 0
pop.v.i self.visible
pushi.e 1119
conv.i.v
push.v self.y
push.v self.x
pushi.e 10
sub.i.v
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
pushi.e 20
pop.v.i self.con
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[21]
push.v self.con
pushi.e 20
cmp.i.v EQ
bf [23]

:[22]
pushi.e 1
pop.v.i global.interact

:[23]
push.v self.con
pushi.e 21
cmp.i.v EQ
bf [25]

:[24]
push.v self.undyne
conv.v.i
push.v [stacktop]self.dsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 22
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[25]
push.v self.con
pushi.e 23
cmp.i.v EQ
bf [27]

:[26]
push.v self.undyne
conv.v.i
push.v [stacktop]self.usprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 24
pop.v.i self.con
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[27]
push.v self.con
pushi.e 25
cmp.i.v EQ
bf [29]

:[28]
push.v self.undyne
conv.v.i
push.v [stacktop]self.rsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 26
pop.v.i self.con
pushi.e 90
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[29]
push.v self.con
pushi.e 27
cmp.i.v EQ
bf [31]

:[30]
push.v self.undyne
conv.v.i
push.v [stacktop]self.lsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e -1
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.hspeed
push.d 0.1
push.v self.undyne
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 28
pop.v.i self.con
pushi.e 100
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[31]
push.v self.con
pushi.e 29
cmp.i.v EQ
bf [35]

:[32]
pushi.e 0
pushi.e -5
pushi.e 350
pop.v.i [array]global.flag
pushi.e 122
pop.v.i global.plot
push.v self.undyne
conv.v.i
pushenv [34]

:[33]
call.i instance_destroy(argc=0)
popz.v

:[34]
popenv [33]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[35]
push.v self.shakify
pushi.e 0
cmp.i.v GT
bf [end]

:[36]
push.v self.shaked
pushi.e 0
cmp.i.v EQ
bf [38]

:[37]
push.v self.x
pop.v.v self.shakememx
push.v self.y
pop.v.v self.shakememy
pushi.e 1
pop.v.i self.shaked

:[38]
push.v self.shakememx
push.v self.shakify
call.i random(argc=1)
add.v.v
push.v self.shakify
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.x
push.v self.shakememy
push.v self.shakify
call.i random(argc=1)
add.v.v
push.v self.shakify
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.y

:[end]