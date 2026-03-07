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
push.s "* Hey^1, I haven't seen you&  around before./"@50462
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "* It's nice to meet new&  people^1, isn't it?/%%"@50463
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
pushglb.v global.plot
pushi.e 105
cmp.i.v GT
bf [2]

:[1]
push.s "* I..^1.&* I don't know you./%%"@50464
pushi.e -5
pushi.e 0
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
push.v self.talkedto
pushi.e 1
add.i.v
pop.v.v self.talkedto

:[end]