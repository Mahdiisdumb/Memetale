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
push.s "* That skeleton over there&  just told me how to dodge&  \"orange attacks.\"/"@50408
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "* What did he say...?&* Something like.../"@50409
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
push.s "* \"Traffic lights have three&  lights on them.\"/"@50410
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
push.s "* \"The third light^1, the green&  one^1, means GO.\"/"@50411
pushi.e -5
pushi.e 3
pop.v.s [array]global.msg
push.s "* \"The first light^1, the red&  one^1, means STOP.\"/"@50412
pushi.e -5
pushi.e 4
pop.v.s [array]global.msg
push.s "* \"The second light^1, the yellow&  one^1, means YIELD.\"/"@50413
pushi.e -5
pushi.e 5
pop.v.s [array]global.msg
push.s "* \"In order to dodge an&  orange attack^1, you must&  be moving.\"/"@50414
pushi.e -5
pushi.e 6
pop.v.s [array]global.msg
push.s "* \"So^1, just think of it&  this way...\"/"@50415
pushi.e -5
pushi.e 7
pop.v.s [array]global.msg
push.s "* \"Red and yellow lights together&  make orange.\"/"@50416
pushi.e -5
pushi.e 8
pop.v.s [array]global.msg
push.s "* \"Then you obey the rule&  of the leftover green&  light^1, which means GO.\"/"@50417
pushi.e -5
pushi.e 9
pop.v.s [array]global.msg
push.s "* \"Easy^1, huh?\"/"@50418
pushi.e -5
pushi.e 10
pop.v.s [array]global.msg
push.s "* \"Just think of a red and yellow&  traffic light which is&  actually green.\"/"@50419
pushi.e -5
pushi.e 11
pop.v.s [array]global.msg
push.s "* Yeah.../"@50420
pushi.e -5
pushi.e 12
pop.v.s [array]global.msg
push.s "* Then he started talking about&  plaid attacks.../%%"@50421
pushi.e -5
pushi.e 13
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