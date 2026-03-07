.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 3
pop.v.i self.myinteract
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
pushi.e 2
pop.v.i self.conversation

:[2]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
push.v self.papyrus
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 3
pop.v.i self.conversation
pushi.e 1339
conv.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.y
pushi.e 12
sub.i.v
push.v self.papyrus
conv.v.i
push.v [stacktop]self.x
pushi.e 3
add.i.v
call.i instance_create(argc=3)
pop.v.v self.xxblcon
pushi.e 20
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[4]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [6]

:[5]
pushi.e 240
pop.v.i global.msc
push.s "obj_papyrus6_138"@20561
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 19
pop.v.i global.typer
pushi.e 4
pop.v.i global.facechoice
pushi.e 1
pop.v.i global.faceemotion
pushi.e 1
pop.v.i global.interact
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer
pushi.e 6
pop.v.i self.conversation

:[6]
push.v self.conversation
pushi.e 6
cmp.i.v EQ
bf [8]

:[7]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [end]

:[10]
pushi.e 4
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.npcdir
pushi.e 0
pop.v.i global.interact
pushi.e 7
pop.v.i self.conversation
call.i instance_destroy(argc=0)
popz.v

:[end]