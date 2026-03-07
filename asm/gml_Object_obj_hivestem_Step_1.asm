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
push.v self.con
pushi.e 3
cmp.i.v LT
bf [2]

:[1]
call.i scr_npc_anim(argc=0)
popz.v

:[2]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [4]

:[3]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
pushi.e 1
pop.v.i global.interact
pushi.e 3
pop.v.i self.con
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
push.v self.con
pushi.e 3
cmp.i.v EQ
bf [9]

:[8]
pushi.e 1
pop.v.i global.interact

:[9]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [11]

:[10]
pushi.e 113
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2051
pop.v.i self.sprite_index
pushi.e 1
pop.v.i self.image_index
pushi.e 5
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[11]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [13]

:[12]
pushi.e 113
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2051
pop.v.i self.sprite_index
pushi.e 2
pop.v.i self.image_index
pushi.e 7
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[13]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [15]

:[14]
pushi.e 113
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2051
pop.v.i self.sprite_index
pushi.e 3
pop.v.i self.image_index
pushi.e 9
pop.v.i self.con
pushi.e 30
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[15]
push.v self.con
pushi.e 10
cmp.i.v EQ
bf [17]

:[16]
pushi.e 113
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2052
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 11
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[17]
push.v self.con
pushi.e 12
cmp.i.v EQ
bf [end]

:[18]
pushi.e 1
pushi.e -5
pushi.e 269
pop.v.i [array]global.flag
pushi.e -1
pop.v.i self.con
pushi.e 0
pop.v.i global.interact
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v

:[end]