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
pushi.e 2
conv.i.v
pushi.e 110
conv.i.v
call.i script_execute(argc=2)
popz.v
push.v self.s_click
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [6]

:[4]
push.v 784.stringno
pushi.e 8
cmp.i.v EQ
bf [6]

:[5]
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v

:[6]
push.v self.s_click
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
pushi.e 784
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [9]

:[8]
push.e 0

:[9]
bf [11]

:[10]
pushi.e 2
pop.v.i self.s_click
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
pushi.e 0
pop.v.i self.visible
pushi.e 1084
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.blk
pushi.e -20
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.depth
pushi.e 3000
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.image_xscale
pushi.e 1000
push.v self.blk
conv.v.i
pop.v.i [stacktop]self.image_yscale
pushi.e 1
pop.v.i global.interact
pushi.e 10
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[11]
push.v self.s_click
pushi.e 2
cmp.i.v EQ
bf [13]

:[12]
pushi.e 1
pop.v.i global.interact

:[13]
push.v self.s_click
pushi.e 3
cmp.i.v EQ
bf [end]

:[14]
pushi.e 107
conv.i.v
call.i snd_play(argc=1)
popz.v
push.v self.blk
conv.v.i
pushenv [16]

:[15]
call.i instance_destroy(argc=0)
popz.v

:[16]
popenv [15]
pushi.e 4
pop.v.i self.s_click
pushi.e 1576
pushenv [18]

:[17]
pushi.e 0
pop.v.i self.uncan

:[18]
popenv [17]
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]