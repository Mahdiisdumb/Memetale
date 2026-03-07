.localvar 0 arguments

:[0]
pushi.e 3
pop.v.i self.myinteract
pushi.e 17
pop.v.i global.typer
pushi.e 3
pop.v.i global.facechoice
pushi.e 0
pop.v.i global.msc
push.s "\\E0* hey there.&* this is just a little test./"@50015
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "\\TS \\F0 \\F4 \\TP %"@50016
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
push.s "I WILL BATHE IN&A SHOWER OF KISSES&EVERY MORNING !/"@50017
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
push.s "\\TS \\F0 \\F3 \\Ts %"@50018
pushi.e -5
pushi.e 3
pop.v.s [array]global.msg
push.s "* no^1. not today./%%"@50019
pushi.e -5
pushi.e 4
pop.v.s [array]global.msg
pushi.e 0
pop.v.i global.faceemotion
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.mydialoguer

:[end]