.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushglb.v global.plot
pushi.e 193
cmp.i.v GT
bf [2]

:[1]
call.i instance_destroy(argc=0)
popz.v
exit.i

:[2]
pushglb.v global.plot
pushi.e 192
cmp.i.v GTE
bf [8]

:[3]
pushi.e 8
conv.i.v
pushi.e 840
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sl
pushi.e 8
conv.i.v
pushi.e 710
conv.i.v
pushi.e 145
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sl2
pushi.e 1750
conv.i.v
pushi.e 700
conv.i.v
pushi.e 140
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.brokemett
push.v self.brokemett
conv.v.i
pushenv [5]

:[4]
call.i scr_depth(argc=0)
popz.v

:[5]
popenv [4]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 1760
push.v self.brokemett
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.brokemett
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 6
add.i.v
pop.i.v [stacktop]self.x
push.v self.brokemett
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 3
sub.i.v
pop.i.v [stacktop]self.y

:[7]
pushi.e 1346
conv.i.v
pushi.e 700
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ii
pushi.e 1346
conv.i.v
pushi.e 700
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ii
pushi.e 1172
conv.i.v
pushi.e 710
conv.i.v
pushi.e 150
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.al2
push.v self.al2
conv.v.i
push.v [stacktop]self.utsprite
push.v self.al2
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
push.v self.al2
conv.v.i
pop.v.i [stacktop]self.fun
push.l 587458478547
pop.v.l self.con
b [13]

:[8]
pushi.e 8
conv.i.v
pushi.e 840
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sl
pushi.e 1750
conv.i.v
pushi.e 700
conv.i.v
pushi.e 140
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.brokemett
push.v self.brokemett
conv.v.i
pushenv [10]

:[9]
call.i scr_depth(argc=0)
popz.v

:[10]
popenv [9]
pushi.e -5
pushi.e 425
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1760
push.v self.brokemett
conv.v.i
pop.v.i [stacktop]self.sprite_index
push.v self.brokemett
conv.v.i
dup.i 0
push.v [stacktop]self.x
pushi.e 6
add.i.v
pop.i.v [stacktop]self.x
push.v self.brokemett
conv.v.i
dup.i 0
push.v [stacktop]self.y
pushi.e 3
sub.i.v
pop.i.v [stacktop]self.y

:[12]
pushi.e 1346
conv.i.v
pushi.e 700
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ii
pushi.e 1346
conv.i.v
pushi.e 700
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.ii
pushi.e 8
conv.i.v
pushi.e 710
conv.i.v
pushi.e 145
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sl2
pushi.e 150
pop.v.i 1576.x
pushi.e 750
pop.v.i 1576.y
pushi.e 2
pop.v.i global.facing
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i 1576.cutscene
pushi.e 1576
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object

:[13]
push.d 0.35
conv.d.v
pushi.e 128
conv.i.v
pushi.e 0
conv.i.v
call.i merge_color(argc=3)
pop.v.v self.x_maroon

:[end]