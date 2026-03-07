.localvar 0 arguments

:[0]
pushi.e 25
pop.v.i self.loadtimer
pushi.e 3
pop.v.i self.fileset
pushi.e 50
pop.v.i global.my_hp
push.v self.destroyer
pushi.e 28
cmp.i.v LT
bf [2]

:[1]
pushi.e 1
pop.v.i 1587.move
b [3]

:[2]
pushi.e 0
pop.v.i 1587.move

:[3]
pushi.e 3
pushi.e -1
pushi.e 9
pop.v.i [array]self.alarm
push.v self.destroyer
pushi.e 1
add.i.v
pop.v.v self.destroyer
push.v self.destroyer
pushi.e 3
cmp.i.v GT
bf [5]

:[4]
pushi.e 0
pushi.e 320
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.flx
pushi.e 0
pushi.e 60
conv.i.v
call.i random(argc=1)
sub.v.i
pop.v.v self.fly

:[5]
push.v self.depth
pushi.e 1
sub.i.v
pop.v.v 1587.depth
pushi.e 314
pop.v.i 1587.x
pushi.e 422
pop.v.i 1587.y
pushi.e 1
pop.v.i 1587.special
pushi.e 2379
pop.v.i 1587.sprite_index
pushi.e -3
conv.i.v
call.i caster_stop(argc=1)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.mus_hit
call.i caster_play(argc=3)
popz.v
pushi.e 1592
pushenv [7]

:[6]
pushi.e 0
pop.v.i self.siner
pushi.e 0
pop.v.i self.image_index

:[7]
popenv [6]
pushi.e 1633
pushenv [9]

:[8]
call.i instance_destroy(argc=0)
popz.v

:[9]
popenv [8]
push.v self.o_kill
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 1
pop.v.i self.o_kill
b [12]

:[11]
pushi.e 0
pop.v.i self.o_kill

:[12]
push.v self.o_kill
pushi.e 0
cmp.i.v EQ
bf [20]

:[13]
pushi.e 1596
pushenv [15]

:[14]
pushi.e 0
pop.v.i self.laugh
pushi.e 0
pop.v.i self.mode
pushi.e 0
pop.v.i self.rotbonus
pushi.e 0
pop.v.i self.xbonus
pushi.e 0
pop.v.i self.ybonus

:[15]
popenv [14]
pushi.e 0
pop.v.i 1595.md
pushi.e 0
pop.v.i 1595.con
pushi.e 30
dup.i 0
push.i 0
cmp.i.i LTE
bt [19]

:[16]
pushi.e 1643
conv.i.v
pushi.e 200
conv.i.v
pushi.e 110
pushi.e 400
conv.i.v
call.i random(argc=1)
add.v.i
call.i instance_create(argc=3)
pop.v.v self.m
push.v self.m
conv.v.i
pushenv [18]

:[17]
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
pushi.e 1
pop.v.i self.image_alpha
pushi.e 12
pop.v.i self.depth
push.v 1587.x
pushi.e 8
add.i.v
pop.v.v self.xx
push.v 1587.y
pushi.e 8
add.i.v
pop.v.v self.yy
push.v self.yy
push.v self.xx
push.v self.y
push.v self.x
call.i point_direction(argc=4)
pop.v.v self.direction
push.v self.direction
pop.v.v self.image_angle

:[18]
popenv [17]
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [16]

:[19]
popz.i
b [end]

:[20]
pushi.e 1596
pushenv [22]

:[21]
pushi.e 1
pop.v.i self.laugh
pushi.e 2
pop.v.i self.mode
pushi.e 1645
conv.i.v
pushi.e 214
conv.i.v
pushi.e 271
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.b
push.v self.depth
pushi.e 1
add.i.v
push.v self.b
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 15
pop.v.i self.rotbonus
pushi.e -4
pop.v.i self.xbonus
pushi.e 6
pop.v.i self.ybonus

:[22]
popenv [21]

:[end]