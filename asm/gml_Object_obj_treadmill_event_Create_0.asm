.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e -5
pushi.e 497
push.v [array]global.flag
pushi.e 2
cmp.i.v LT
bf [2]

:[1]
pushi.e 2
pushi.e -5
pushi.e 497
pop.v.i [array]global.flag
pushi.e 0
pop.v.i 1576.visible
pushi.e 99
pop.v.i 1576.x
pushi.e 136
pop.v.i 1576.y
push.v 1576.sprite_index
pushi.e 112
conv.i.v
push.v 1576.x
call.i scr_marker(argc=3)
pop.v.v self.mc
pushi.e 1000
push.v self.mc
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1414
conv.i.v
pushi.e 190
conv.i.v
pushi.e 75
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.pap
pushi.e 0
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 80
push.v self.pap
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i self.con
pushi.e 45
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
b [end]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[end]