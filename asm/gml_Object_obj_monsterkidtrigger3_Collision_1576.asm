.localvar 0 arguments

:[0]
push.v self.con
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.v other.xprevious
pop.v.v other.x
push.v other.yprevious
pop.v.v other.y
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
push.v self.mkid
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
pop.v.i global.msc
pushi.e 5
pop.v.i global.typer

:[5]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.interact
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [end]

:[9]
pushi.e 7
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
push.v other.xprevious
pop.v.v other.x
push.v other.yprevious
pop.v.v other.y
push.v self.mkid
conv.v.i
push.v [stacktop]self.ltsprite
push.v self.mkid
conv.v.i
pop.v.v [stacktop]self.sprite_index
push.d 0.25
push.v self.mkid
conv.v.i
pop.v.d [stacktop]self.image_speed
pushi.e 0
pop.v.i global.msc
pushi.e 0
pop.v.i global.facechoice
pushi.e 5
pop.v.i global.typer
push.s "obj_monsterkidtrigger3_284"@18383
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_monsterkidtrigger3_285"@18385
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
push.v self.numero
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
push.s "obj_monsterkidtrigger3_286"@18387
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[11]
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v

:[end]