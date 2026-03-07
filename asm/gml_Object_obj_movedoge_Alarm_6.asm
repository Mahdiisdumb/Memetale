.localvar 0 arguments

:[0]
pushi.e 187
conv.i.v
push.v self.y
pushi.e 52
add.i.v
push.v self.x
pushi.e 145
add.i.v
call.i instance_create(argc=3)
pop.v.v self.blcon
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
push.v self.mercymod
pushi.e -25
cmp.i.v EQ
bf [2]

:[1]
call.i scr_monstersum(argc=0)
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
pop.v.i self.mercymod

:[5]
push.s "obj_movedoge_259"@18517
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.excited
pushi.e 1
cmp.i.v EQ
bf [7]

:[6]
push.s "obj_movedoge_260"@18519
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[7]
pushglb.v global.turn
pushi.e 1
cmp.i.v GTE
bf [9]

:[8]
push.v self.excited
pushi.e 0
cmp.i.v EQ
b [10]

:[9]
push.e 0

:[10]
bf [12]

:[11]
push.s "obj_movedoge_261"@18521
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[12]
push.v self.mercymod
pushi.e 100
cmp.i.v GT
bf [14]

:[13]
push.v self.mercymod
pushi.e 800
cmp.i.v LT
b [15]

:[14]
push.e 0

:[15]
bf [17]

:[16]
push.s "obj_movedoge_264"@18523
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 30000
push.v self.mypart1
conv.v.i
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 101
pop.v.i self.mercymod
pushi.e 1
push.v self.mypart1
conv.v.i
pop.v.i [stacktop]self.excited

:[17]
push.v self.mercymod
pushi.e 1000
cmp.i.v EQ
bf [29]

:[18]
push.s "obj_movedoge_271"@18525
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
push.v self.pets
pushi.e 2
cmp.i.v EQ
bf [20]

:[19]
push.s "obj_movedoge_272"@18527
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[20]
push.v self.pets
pushi.e 3
cmp.i.v EQ
bf [22]

:[21]
push.s "obj_movedoge_273"@18529
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[22]
push.v self.pets
pushi.e 4
cmp.i.v EQ
bf [24]

:[23]
push.s "obj_movedoge_274"@18531
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg

:[24]
pushi.e 999
pop.v.i self.mercymod
pushi.e -90
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef
push.v self.pets
pushi.e 4
cmp.i.v EQ
bf [26]

:[25]
push.v self.mypart1
conv.v.i
push.v [stacktop]self.excited
pushi.e 0
cmp.i.v EQ
b [27]

:[26]
push.e 0

:[27]
bf [29]

:[28]
push.s "obj_movedoge_277"@18533
conv.s.v
call.i scr_gettext(argc=1)
pushi.e -5
pushi.e 0
pop.v.v [array]global.msg
pushi.e 0
pushi.e -5
push.v self.myself
conv.v.i
pop.v.i [array]global.monsterdef

:[29]
push.s "obj_movedoge_283"@18534
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
pushi.e 6
pop.v.i global.border
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