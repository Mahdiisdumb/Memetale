.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 864
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
pushi.e 0
push.v self.tor
conv.v.i
pop.v.i [stacktop]self.facing
pushi.e 211
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
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
push.d 1.5
pop.v.d self.conversation

:[5]
push.v self.conversation
push.d 1.5
cmp.d.v EQ
bf [7]

:[6]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [8]

:[7]
push.e 0

:[8]
bf [12]

:[9]
push.v self.tor
conv.v.i
pushenv [11]

:[10]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 11
conv.i.v
call.i path_start(argc=4)
popz.v

:[11]
popenv [10]
pushi.e 0
pop.v.i global.interact
pushi.e 2
pop.v.i self.conversation

:[12]
push.v self.conversation
pushi.e 2
cmp.i.v EQ
bf [14]

:[13]
pushi.e 864
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [15]

:[14]
push.e 0

:[15]
bf [22]

:[16]
push.v 864.path_position
pushi.e 1
cmp.i.v EQ
bf [22]

:[17]
pushi.e 874
conv.i.v
push.v self.tor
conv.v.i
push.v [stacktop]self.y
push.v self.tor
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.tor2
push.v self.tor2
conv.v.i
pushenv [19]

:[18]
pushi.e 270
pop.v.i self.direction

:[19]
popenv [18]
pushi.e 864
pushenv [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [20]
push.d 5.5
pop.v.d global.plot
pushi.e 3
pop.v.i self.conversation

:[22]
pushglb.v global.plot
pushi.e 6
cmp.i.v EQ
bf [24]

:[23]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [33]

:[26]
pushi.e -5
pushi.e 10
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [30]

:[27]
pushi.e -5
pushi.e 11
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [30]

:[28]
pushi.e -5
pushi.e 12
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
bt [30]

:[29]
pushi.e -5
pushi.e 13
push.v [array]global.flag
pushi.e 1
cmp.i.v EQ
b [31]

:[30]
push.e 1

:[31]
bf [33]

:[32]
pushi.e 1
pop.v.i global.interact
pushi.e 15
pushi.e -1
pushi.e 7
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.conversation

:[33]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [35]

:[34]
pushi.e 1
pop.v.i global.interact

:[35]
push.v self.conversation
pushi.e 6
cmp.i.v EQ
bf [37]

:[36]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [38]

:[37]
push.e 0

:[38]
bf [end]

:[39]
push.v self.tor3
conv.v.i
pushenv [41]

:[40]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 12
conv.i.v
call.i path_start(argc=4)
popz.v

:[41]
popenv [40]
pushi.e 7
pop.v.i global.plot
pushi.e 8
pop.v.i self.conversation
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]