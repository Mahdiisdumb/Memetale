.localvar 0 arguments
.localvar 1 blcon_textofs 5686

:[0]
pushi.e 653
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.invc
pushi.e 1
cmp.i.v LT
b [3]

:[2]
push.e 0

:[3]
bf [7]

:[4]
push.s "obj_blueattackgen_90"@10782
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_blueattackgen_91"@10784
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_blueattackgen_92"@10786
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
pushi.e 22
pop.v.i global.typer
pushi.e 188
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 15
pop.v.i local.blcon_textofs
pushglb.v global.language
push.s "ja"@3058
cmp.s.v EQ
bf [6]

:[5]
push.v local.blcon_textofs
pushi.e 11
add.i.v
pop.v.v local.blcon_textofs

:[6]
pushi.e 786
conv.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.y
pushi.e 10
add.i.v
push.v self.blcon
conv.v.i
push.v [stacktop]self.x
pushloc.v local.blcon_textofs
add.v.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushglb.v global.batmusic2
pop.v.v global.batmusic
pushi.e 2
pushi.e -1
pushi.e 6
pop.v.i [array]self.alarm
pushi.e 1
pop.v.i 233.dontcancel
b [end]

:[7]
pushi.e 2
pushi.e -1
pushi.e 5
pop.v.i [array]self.alarm

:[end]