.localvar 0 arguments

:[0]
push.v self.sprite_index
pushi.e 237
cmp.i.v EQ
bf [2]

:[1]
exit.i

:[2]
push.v self.specialx
pushi.e 1
cmp.i.v EQ
bf [end]

:[3]
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [5]

:[4]
pushi.e 10
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pushi.e 8
add.i.v
pushi.e -1
pushi.e 2
pop.v.v [array]self.alarm
b [15]

:[5]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [9]

:[6]
push.v self.blcon
conv.v.i
pushenv [8]

:[7]
call.i instance_destroy(argc=0)
popz.v

:[8]
popenv [7]

:[9]
push.v self.blconwd
call.i instance_exists(argc=1)
conv.v.b
bf [13]

:[10]
push.v self.blconwd
conv.v.i
pushenv [12]

:[11]
call.i instance_destroy(argc=0)
popz.v

:[12]
popenv [11]

:[13]
exit.i

:[14]
pushi.e 0
pop.v.i self.specialx
pushi.e -1
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[15]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[16]
push.v self.blcon
conv.v.i
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]

:[19]
push.v self.blconwd
call.i instance_exists(argc=1)
conv.v.b
bf [23]

:[20]
push.v self.blconwd
conv.v.i
pushenv [22]

:[21]
call.i instance_destroy(argc=0)
popz.v

:[22]
popenv [21]

:[23]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.v self.x
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
call.i random(argc=1)
sub.v.v
pushi.e 40
sub.i.v
pop.v.v self.xx
push.v self.y
push.v self.sprite_height
pushi.e 3
conv.i.d
div.d.v
call.i random(argc=1)
add.v.v
pop.v.v self.yy

:[25]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [27]

:[26]
push.v self.x
push.v self.sprite_width
pushi.e 3
conv.i.d
div.d.v
call.i random(argc=1)
add.v.v
pushi.e 100
add.i.v
pop.v.v self.xx
push.v self.y
push.v self.sprite_height
pushi.e 3
conv.i.d
div.d.v
call.i random(argc=1)
add.v.v
pop.v.v self.yy

:[27]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [29]

:[28]
push.v self.x
push.v self.sprite_width
call.i random(argc=1)
add.v.v
push.v self.sprite_width
pushi.e 2
conv.i.d
div.d.v
sub.v.v
pop.v.v self.xx
push.v self.y
pushi.e 18
sub.i.v
pop.v.v self.yy

:[29]
pushi.e 187
conv.i.v
push.v self.yy
push.v self.xx
call.i instance_create(argc=3)
pop.v.v self.blcon
pushi.e 14
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 31
push.v self.blcon
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [31]

:[30]
push.s "obj_movedogehead_185"@18554
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[31]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
push.s "obj_movedogehead_186"@18556
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[33]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [35]

:[34]
push.s "obj_movedogehead_187"@18558
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[35]
push.s "obj_movedogehead_188"@18559
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 1
pop.v.v [array]global.msg
pushi.e 2
pop.v.i global.typer
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
pushi.e 15
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blconwd
pushi.e 13
push.v self.blconwd
conv.v.i
pop.v.i [stacktop]self.depth

:[end]