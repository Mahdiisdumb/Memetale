.localvar 0 arguments

:[0]
push.v self.side
pushi.e 0
cmp.i.v EQ
bf [24]

:[1]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [11]

:[2]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [11]

:[3]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 40
cmp.i.v LT
bf [7]

:[4]
push.v self.open
pushi.e 0
cmp.i.v EQ
bf [6]

:[5]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 122
conv.i.v
call.i caster_play(argc=3)
popz.v

:[6]
pushi.e 1
pop.v.i self.open

:[7]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 50
cmp.i.v GT
bf [11]

:[8]
push.v self.open
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 121
conv.i.v
call.i caster_play(argc=3)
popz.v

:[10]
pushi.e 0
pop.v.i self.open

:[11]
push.v self.open
pushi.e -1
cmp.i.v EQ
bf [13]

:[12]
pushi.e 0
pop.v.i self.open

:[13]
push.v self.doorx
pushi.e 7
cmp.i.v LT
bf [15]

:[14]
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 61
conv.i.v
pushi.e 8
push.v self.doorx
sub.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1972
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[15]
push.v self.doorx
pushi.e 7
cmp.i.v LT
bf [17]

:[16]
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 6
add.i.v
push.v self.doorx
add.v.v
pushi.e 61
conv.i.v
pushi.e 8
push.v self.doorx
sub.v.i
pushi.e 0
conv.i.v
push.v self.doorx
pushi.e 0
conv.i.v
pushi.e 1972
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[17]
push.v self.open
pushi.e 1
cmp.i.v EQ
bf [20]

:[18]
push.v self.doorx
pushi.e 8
cmp.i.v LT
bf [20]

:[19]
push.v self.doorx
pushi.e 1
add.i.v
pop.v.v self.doorx

:[20]
push.v self.open
pushi.e 0
cmp.i.v EQ
bf [23]

:[21]
push.v self.doorx
pushi.e 0
cmp.i.v GT
bf [23]

:[22]
push.v self.doorx
pushi.e 1
sub.i.v
pop.v.v self.doorx

:[23]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1973
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[24]
push.v self.side
pushi.e 1
cmp.i.v EQ
bf [end]

:[25]
push.v self.active
pushi.e 1
cmp.i.v EQ
bf [35]

:[26]
pushi.e 1576
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [35]

:[27]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 30
cmp.i.v LT
bf [31]

:[28]
push.v self.open
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 122
conv.i.v
call.i caster_play(argc=3)
popz.v

:[30]
pushi.e 1
pop.v.i self.open

:[31]
pushi.e 1576
conv.i.v
call.i distance_to_object(argc=1)
pushi.e 50
cmp.i.v GT
bf [35]

:[32]
push.v self.open
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 121
conv.i.v
call.i caster_play(argc=3)
popz.v

:[34]
pushi.e 0
pop.v.i self.open

:[35]
push.v self.open
pushi.e -1
cmp.i.v EQ
bf [37]

:[36]
pushi.e 0
pop.v.i self.open

:[37]
push.v self.doorx
pushi.e 7
cmp.i.v LT
bf [39]

:[38]
push.v self.y
pushi.e 10
add.i.v
push.v self.x
pushi.e 19
add.i.v
pushi.e 61
conv.i.v
pushi.e 8
push.v self.doorx
sub.v.i
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 1969
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[39]
push.v self.doorx
pushi.e 7
cmp.i.v LT
bf [41]

:[40]
push.v self.y
pushi.e 4
add.i.v
push.v self.x
pushi.e 25
add.i.v
push.v self.doorx
add.v.v
pushi.e 61
conv.i.v
pushi.e 8
push.v self.doorx
sub.v.i
pushi.e 0
conv.i.v
push.v self.doorx
pushi.e 0
conv.i.v
pushi.e 1969
conv.i.v
call.i draw_sprite_part(argc=8)
popz.v

:[41]
push.v self.open
pushi.e 1
cmp.i.v EQ
bf [44]

:[42]
push.v self.doorx
pushi.e 8
cmp.i.v LT
bf [44]

:[43]
push.v self.doorx
pushi.e 1
add.i.v
pop.v.v self.doorx

:[44]
push.v self.open
pushi.e 0
cmp.i.v EQ
bf [47]

:[45]
push.v self.doorx
pushi.e 0
cmp.i.v GT
bf [47]

:[46]
push.v self.doorx
pushi.e 1
sub.i.v
pop.v.v self.doorx

:[47]
push.v self.y
push.v self.x
pushi.e 0
conv.i.v
pushi.e 1974
conv.i.v
call.i draw_sprite(argc=4)
popz.v

:[end]