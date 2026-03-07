.localvar 0 arguments

:[0]
push.v 1576.depth
pop.v.v self.depth
pushi.e 29
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 15
pushi.e 5
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm
pushi.e 3
pop.v.i global.interact
call.i scr_murderlv(argc=0)
pushi.e 8
cmp.i.v GTE
bf [2]

:[1]
pushi.e -5
pushi.e 27
push.v [array]global.flag
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1141
pop.v.i self.sprite_index

:[5]
push.v 1576.y
pushi.e 11
sub.i.v
push.v 1576.x
call.i action_move_to(argc=2)
popz.v

:[end]