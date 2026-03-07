.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
push.v 1576.x
pushi.e 140
cmp.i.v GT
bt [3]

:[2]
push.v 1576.y
pushi.e 170
cmp.i.v LT
b [4]

:[3]
push.e 1

:[4]
b [6]

:[5]
push.e 0

:[6]
bf [8]

:[7]
pushi.e 204
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facechoice
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 1
pop.v.i self.conversation

:[8]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [11]

:[10]
push.e 0

:[11]
bf [15]

:[12]
pushi.e 0
pop.v.i global.interact
pushi.e 2
pop.v.i self.conversation
pushi.e 864
pushenv [14]

:[13]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
push.d 3.25
conv.d.v
pushi.e 8
conv.i.v
call.i path_start(argc=4)
popz.v

:[14]
popenv [13]

:[15]
pushi.e 864
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [26]

:[16]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [18]

:[17]
push.v 864.path_position
pushi.e 1
cmp.i.v EQ
b [19]

:[18]
push.e 0

:[19]
bf [26]

:[20]
push.d 2.5
pop.v.d self.conversation
pushi.e 864
pushenv [22]

:[21]
call.i path_end(argc=0)
popz.v

:[22]
popenv [21]
pushglb.v global.plot
pushi.e 4
cmp.i.v LT
bf [26]

:[23]
pushi.e 4
pop.v.i global.plot
pushi.e 869
conv.i.v
push.v 864.y
push.v 864.x
call.i instance_create(argc=3)
popz.v
pushi.e 864
pushenv [25]

:[24]
call.i instance_destroy(argc=0)
popz.v

:[25]
popenv [24]

:[26]
push.v self.conversation
push.d 2.5
cmp.d.v EQ
bf [28]

:[27]
pushglb.v global.plot
push.d 4.5
cmp.d.v EQ
b [29]

:[28]
push.e 0

:[29]
bf [37]

:[30]
pushi.e 3
pop.v.i self.conversation
pushi.e 869
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [34]

:[31]
pushi.e 864
conv.i.v
push.v 869.y
push.v 869.x
call.i instance_create(argc=3)
popz.v
pushi.e 869
pushenv [33]

:[32]
call.i instance_destroy(argc=0)
popz.v

:[33]
popenv [32]

:[34]
pushi.e 864
pushenv [36]

:[35]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 9
conv.i.v
call.i path_start(argc=4)
popz.v

:[36]
popenv [35]

:[37]
pushi.e 864
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [47]

:[38]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
bf [40]

:[39]
push.v 864.path_position
pushi.e 1
cmp.i.v EQ
b [41]

:[40]
push.e 0

:[41]
bf [47]

:[42]
pushi.e 4
pop.v.i self.conversation
pushi.e 864
pushenv [44]

:[43]
call.i path_end(argc=0)
popz.v

:[44]
popenv [43]
pushi.e 872
conv.i.v
push.v 864.y
push.v 864.x
call.i instance_create(argc=3)
popz.v
pushi.e 864
pushenv [46]

:[45]
call.i instance_destroy(argc=0)
popz.v

:[46]
popenv [45]

:[47]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [50]

:[48]
pushglb.v global.plot
pushi.e 5
cmp.i.v EQ
bf [50]

:[49]
pushi.e 185
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [51]

:[50]
push.e 0

:[51]
bf [61]

:[52]
pushi.e 872
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [60]

:[53]
pushi.e 864
conv.i.v
push.v 872.y
push.v 872.x
call.i instance_create(argc=3)
popz.v
pushi.e 872
pushenv [55]

:[54]
call.i instance_destroy(argc=0)
popz.v

:[55]
popenv [54]
pushi.e 864
pushenv [57]

:[56]
pushi.e 3
pop.v.i self.facing

:[57]
popenv [56]
pushi.e 864
pushenv [59]

:[58]
push.v self.lsprite
pop.v.v self.sprite_index

:[59]
popenv [58]

:[60]
pushi.e 210
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.interact
pushi.e 1
pop.v.i global.facechoice
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 5
pop.v.i self.conversation

:[61]
push.v self.conversation
pushi.e 5
cmp.i.v EQ
bf [63]

:[62]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [64]

:[63]
push.e 0

:[64]
bf [end]

:[65]
pushi.e 6
pop.v.i self.conversation
pushi.e 0
pop.v.i global.interact
pushi.e 864
pushenv [67]

:[66]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 41
conv.i.v
call.i path_start(argc=4)
popz.v

:[67]
popenv [66]
call.i instance_destroy(argc=0)
popz.v

:[end]