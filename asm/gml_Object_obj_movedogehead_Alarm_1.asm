.localvar 0 arguments

:[0]
pushglb.v global.mnfight
pushi.e 2
cmp.i.v EQ
bf [2]

:[1]
pushi.e 20
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pushi.e 10
add.i.v
pushi.e -1
pushi.e 1
pop.v.v [array]self.alarm
b [11]

:[2]
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[3]
push.v self.blcon
conv.v.i
pushenv [5]

:[4]
call.i instance_destroy(argc=0)
popz.v

:[5]
popenv [4]

:[6]
push.v self.blconwd
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[7]
push.v self.blconwd
conv.v.i
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]

:[10]
exit.i

:[11]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.gg
push.v self.blcon
call.i instance_exists(argc=1)
conv.v.b
bf [15]

:[12]
push.v self.blcon
conv.v.i
pushenv [14]

:[13]
call.i instance_destroy(argc=0)
popz.v

:[14]
popenv [13]

:[15]
push.v self.blconwd
call.i instance_exists(argc=1)
conv.v.b
bf [19]

:[16]
push.v self.blconwd
conv.v.i
pushenv [18]

:[17]
call.i instance_destroy(argc=0)
popz.v

:[18]
popenv [17]

:[19]
push.v self.gg
pushi.e 0
cmp.i.v EQ
bf [21]

:[20]
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

:[21]
push.v self.gg
pushi.e 1
cmp.i.v EQ
bf [23]

:[22]
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

:[23]
push.v self.gg
pushi.e 2
cmp.i.v EQ
bf [25]

:[24]
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

:[25]
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
push.s "obj_movedogehead_263"@18561
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.s "obj_movedogehead_264"@18562
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