.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_depth(argc=5)
popz.v
pushi.e -5
pushi.e 107
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
bf [9]

:[1]
pushi.e 0
pop.v.i self.hasdog
pushi.e 0
pop.v.i self.i

:[2]
push.v self.i
pushi.e 8
cmp.i.v LT
bf [6]

:[3]
pushi.e -5
push.v self.i
conv.v.i
push.v [array]global.item
pushi.e 27
cmp.i.v EQ
bf [5]

:[4]
pushi.e 1
pop.v.i self.hasdog

:[5]
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [2]

:[6]
push.v self.hasdog
pushi.e 0
cmp.i.v EQ
bf [9]

:[7]
pushi.e 0
pop.v.i self.noroom
pushi.e 27
conv.i.v
call.i scr_itemget(argc=1)
popz.v
push.v self.noroom
pushi.e 1
cmp.i.v NEQ
bf [9]

:[8]
pushi.e 2
pushi.e -5
pushi.e 107
pop.v.i [array]global.flag

:[9]
push.v self.con
pushi.e 1
cmp.i.v EQ
bf [11]

:[10]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [17]

:[13]
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pop.v.i global.interact
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 47
conv.i.v
call.i snd_play(argc=1)
popz.v
pushglb.v global.facing
pushi.e 3
cmp.i.v NEQ
bf [15]

:[14]
pushi.e 1090
conv.i.v
push.v 1576.y
pushi.e 10
add.i.v
push.v 1576.x
pushi.e 30
add.i.v
call.i instance_create(argc=3)
pop.v.v self.dog
pushi.e 1616
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.sprite_index
b [16]

:[15]
pushi.e 1090
conv.i.v
push.v 1576.y
pushi.e 10
add.i.v
push.v 1576.x
pushi.e 30
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.dog
pushi.e 1611
push.v self.dog
conv.v.i
pop.v.i [stacktop]self.sprite_index

:[16]
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.con

:[17]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [21]

:[18]
push.v self.dog
conv.v.i
pushenv [20]

:[19]
pushi.e 1
pop.v.i self.con

:[20]
popenv [19]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.v self.dogsong
call.i caster_play(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[21]
push.v self.con
pushi.e 5
cmp.i.v EQ
bf [23]

:[22]
pushi.e 5
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pop.v.v self.res
pushi.e 29
push.v self.res
add.v.i
call.i scr_itemget(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact
push.v self.dogsong
call.i caster_stop(argc=1)
popz.v
pushi.e 0
conv.i.v
pushglb.v global.currentsong
call.i caster_set_volume(argc=2)
popz.v
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 153
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pushi.e -5
pushi.e 107
pop.v.i [array]global.flag
pushi.e 6
pop.v.i self.con
pushi.e 0
pop.v.i self.myinteract
pushi.e 0
pop.v.i self.anti_buffer

:[23]
push.v self.con
pushi.e 0
cmp.i.v GT
bf [25]

:[24]
push.v self.con
pushi.e 6
cmp.i.v LT
b [26]

:[25]
push.e 0

:[26]
bf [end]

:[27]
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.anti_buffer

:[end]