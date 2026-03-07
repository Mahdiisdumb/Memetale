.localvar 0 arguments

:[0]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
pushi.e 100
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.mycommand
pushi.e 0
pop.v.i global.msc
push.s "obj_mettatonb_third_214"@17263
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.turns
pushi.e 1
add.i.v
pop.v.v self.turns
push.v self.turns
pushi.e 0
cmp.i.v GT
bf [11]

:[1]
push.v self.turns
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.s "obj_mettatonb_third_224"@17265
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_225"@17267
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_226"@17269
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_227"@17271
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_228"@17273
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 4
pop.v.v [array]global.msg

:[3]
push.v self.turns
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
push.s "obj_mettatonb_third_233"@17275
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_234"@17277
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_235"@17279
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_236"@17281
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[5]
push.v self.turns
pushi.e 3
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_mettatonb_third_241"@17283
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_242"@17285
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg

:[7]
push.v self.turns
pushi.e 4
cmp.i.v EQ
bf [9]

:[8]
push.s "obj_mettatonb_third_247"@17287
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_248"@17289
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_249"@17291
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_250"@17293
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 3
pop.v.v [array]global.msg

:[9]
push.v self.turns
pushi.e 5
cmp.i.v EQ
bf [11]

:[10]
push.s "obj_mettatonb_third_255"@17295
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_256"@17297
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.s "obj_mettatonb_third_257"@17299
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 2
pop.v.v [array]global.msg

:[11]
pushi.e 51
pop.v.i global.typer
pushi.e 1
conv.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.y
pushi.e 120
sub.i.v
push.v self.mypart1
conv.v.i
push.v [stacktop]self.x
pushi.e 320
sub.i.v
call.i scr_blcon(argc=3)
popz.v
pushi.e 24
pop.v.i global.border
push.v self.turns
pushi.e 0
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i global.border

:[13]
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.x
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e -5
pushi.e 3
push.v [array]global.idealborder
add.v.v
pushi.e 2
conv.i.d
div.d.v
call.i round(argc=1)
pushi.e 8
sub.i.v
pop.v.v 744.y

:[end]