.localvar 0 arguments

:[0]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.v self.con
pushi.e 0
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 1
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
pushi.e 2
pop.v.i self.con

:[5]
push.v self.con
pushi.e 2
cmp.i.v EQ
bf [7]

:[6]
pushglb.v global.currentsong
call.i caster_pause(argc=1)
popz.v
pushi.e 110
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 2252
pop.v.i self.sprite_index
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
push.d 2.9
pop.v.d self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[7]
push.v self.con
push.d 3.9
cmp.d.v EQ
bf [9]

:[8]
push.s "music/sfx_generate.ogg"@2730
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.tr
push.d 0.7
conv.d.v
push.d 0.9
conv.d.v
push.v self.tr
call.i caster_play(argc=3)
popz.v
pushi.e 4
pop.v.i self.con

:[9]
push.v self.con
pushi.e 4
cmp.i.v EQ
bf [12]

:[10]
push.d 0.334
pop.v.d self.image_speed
push.v self.image_index
pushi.e 8
cmp.i.v GTE
bf [12]

:[11]
pushi.e 8
pop.v.i self.image_index
pushi.e 0
pop.v.i self.image_speed
pushi.e 5
pop.v.i self.con
pushi.e 50
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[12]
push.v self.con
pushi.e 6
cmp.i.v EQ
bf [14]

:[13]
push.v self.tr
call.i caster_free(argc=1)
popz.v
pushi.e 82
pop.v.i global.battlegroup
pushi.e 1
pop.v.i global.mercy
pushi.e 0
pop.v.i global.border
pushi.e 0
pushi.e -5
pushi.e 16
pop.v.i [array]global.flag
pushi.e 143
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 7
pop.v.i self.con
pushi.e 32
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[14]
push.v self.con
pushi.e 8
cmp.i.v EQ
bf [end]

:[15]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i global.mercy
pushglb.v global.currentsong
call.i caster_resume(argc=1)
popz.v
pushi.e 0
pop.v.i self.myinteract
pushi.e 1
pushi.e -5
pushi.e 489
pop.v.i [array]global.flag
call.i scr_tempsave(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]