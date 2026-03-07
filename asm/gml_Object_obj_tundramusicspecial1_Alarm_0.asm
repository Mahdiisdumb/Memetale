.localvar 0 arguments

:[0]
pushi.e -5
pushi.e 47
push.v [array]global.flag
pushi.e -1
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.currentsong2
call.i caster_free(argc=1)
popz.v
exit.i

:[2]
pushi.e -5
pushi.e 47
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [5]

:[3]
push.v self.played
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
push.v 1576.x
pushi.e 660
cmp.i.v GT
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
push.d 1.58
conv.d.v
push.d 0.2
conv.d.v
pushglb.v global.currentsong2
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pop.v.i self.played

:[8]
pushi.e -5
pushi.e 47
push.v [array]global.flag
pushi.e 0
cmp.i.v GT
bf [11]

:[9]
push.v self.played
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
push.v 1576.x
pushi.e 1350
cmp.i.v GT
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
push.d 1.68
conv.d.v
push.d 0.2
conv.d.v
pushglb.v global.currentsong2
call.i caster_loop(argc=3)
popz.v
pushi.e 2
pop.v.i self.played

:[14]
pushi.e -5
pushi.e 47
push.v [array]global.flag
pushi.e 2
cmp.i.v GT
bf [17]

:[15]
push.v self.played
pushi.e 2
cmp.i.v EQ
bf [17]

:[16]
push.v 1576.x
pushi.e 1600
cmp.i.v GT
b [18]

:[17]
push.e 0

:[18]
bf [20]

:[19]
push.d 2.12
conv.d.v
push.d 0.1
conv.d.v
pushglb.v global.currentsong2
call.i caster_loop(argc=3)
pop.v.v self.ex2
pushi.e 3
pop.v.i self.played

:[20]
pushi.e 5
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e -5
pushi.e 47
push.v [array]global.flag
pushi.e 2
cmp.i.v GT
bf [23]

:[21]
push.v self.played
pushi.e 3
cmp.i.v EQ
bf [23]

:[22]
push.v 1576.x
pushi.e 1610
cmp.i.v GT
b [24]

:[23]
push.e 0

:[24]
bf [end]

:[25]
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
push.d 0.2
push.v 1576.x
pushi.e 1610
sub.i.v
pushi.e 860
conv.i.d
div.d.v
add.v.d
pushglb.v global.currentsong2
call.i caster_set_volume(argc=2)
popz.v
push.d 0.1
push.v 1576.x
pushi.e 1610
sub.i.v
pushi.e 860
conv.i.d
div.d.v
add.v.d
push.v self.ex2
call.i caster_set_volume(argc=2)
popz.v

:[end]