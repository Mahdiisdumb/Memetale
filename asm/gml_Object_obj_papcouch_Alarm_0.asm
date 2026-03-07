.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer
pushi.e 0
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.faceemotion
pushi.e -5
pushi.e 83
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "obj_papcouch_62"@19719
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_papcouch_63"@19721
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_papcouch_64"@19723
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.v global.gold
pushi.e 20
add.i.v
pop.v.v global.gold
pushi.e 1
pushi.e -5
pushi.e 83
pop.v.i [array]global.flag
b [3]

:[2]
push.s "obj_papcouch_70"@19725
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[3]
push.v self.read
pushi.e 1
add.i.v
pop.v.v self.read
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]