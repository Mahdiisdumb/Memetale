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
push.s "%%"@277
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.v self.xstring1
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.xno
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.xstring2
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "%%"@277
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg

:[2]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]