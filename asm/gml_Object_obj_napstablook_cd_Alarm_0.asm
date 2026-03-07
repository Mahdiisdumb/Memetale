.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.no
push.v self.id
pushi.e 1
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
cmp.v.v EQ
bf [2]

:[1]
pushi.e 1
pop.v.i self.no

:[2]
push.v self.id
pushi.e 2
conv.i.v
push.v self.object_index
call.i instance_find(argc=2)
cmp.v.v EQ
bf [4]

:[3]
pushi.e 2
pop.v.i self.no

:[4]
pushi.e 606
pop.v.i global.msc
push.v self.no
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
pushi.e 608
pop.v.i global.msc

:[6]
push.v self.no
pushi.e 2
cmp.i.v EQ
bf [8]

:[7]
pushi.e 610
pop.v.i global.msc

:[8]
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
push.v self.buffer
pushi.e 0
cmp.i.v GT
bf [10]

:[9]
pushi.e 0
pop.v.i global.msc
push.s "obj_napstablook_cd_113"@18911
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[10]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]