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
push.s "* Hey^1, shrimp^1!&* You look like you get your&  butt kicked a lot!/"@51019
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "* Why don't you check out&  my new book on fighting&  in the library?/"@51020
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
push.s "* That is..^1.&* If you're tough enough to&  love reading books!/"@51021
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
push.s "* GROWL!!/%%"@51022
pushi.e -5
pushi.e 3
pop.v.s [array]global.msg
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