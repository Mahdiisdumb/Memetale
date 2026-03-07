.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.move
pushi.e 1119
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.v 1119.hspeed
pop.v.v self.move
pushi.e 1527
pop.v.i 1119.sprite_index
pushi.e 20
pushi.e 1119
pushi.e 8
pop.v.i [array]self.alarm
pushi.e 1042
conv.i.v
push.v self.y
pushi.e 5
add.i.v
push.v self.x
pushi.e 5
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.star
push.v self.move
push.v self.star
conv.v.i
pop.v.v [stacktop]self.hspeed
push.v 1119.depth
pushi.e 1
sub.i.v
push.v self.star
conv.v.i
pop.v.v [stacktop]self.depth
pushi.e 13
conv.i.v
call.i snd_play(argc=1)
popz.v

:[2]
push.v self.x
pop.v.v self.xx
push.v self.y
pop.v.v self.yy
pushbltn.v self.room
pushi.e 93
cmp.i.v EQ
bf [4]

:[3]
pushi.e -100
pop.v.i self.xx
pushi.e 0
conv.i.v
pushi.e 240
conv.i.v
call.i choose(argc=2)
pop.v.v self.yy

:[4]
pushi.e 3
dup.i 0
push.i 0
cmp.i.i LTE
bt [6]

:[5]
pushi.e 1044
conv.i.v
push.v self.yy
pushi.e 5
add.i.v
push.v self.xx
pushi.e 5
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.a
push.v self.move
push.v self.a
conv.v.i
pop.v.v [stacktop]self.move
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [5]

:[6]
popz.i
push.v self.spearamt
pushi.e 35
cmp.i.v LT
bf [10]

:[7]
push.v self.spearamt
push.d 0.3
add.d.v
pop.v.v self.spearamt
push.v self.spearamt
pushi.e 13
cmp.i.v GT
bf [9]

:[8]
push.v self.spearamt
push.d 0.4
add.d.v
pop.v.v self.spearamt

:[9]
b [12]

:[10]
pushi.e 115
conv.i.v
call.i snd_play(argc=1)
popz.v
pushbltn.v self.room
pushi.e 92
cmp.i.v EQ
bf [12]

:[11]
pushi.e 1
pushi.e -5
pushi.e 284
pop.v.i [array]global.flag

:[12]
pushi.e 48
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.alarm
push.v self.spearamt
sub.v.v
pop.i.v [array]self.alarm

:[end]