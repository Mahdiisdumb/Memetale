.localvar 0 arguments

:[0]
push.v self.image_index
pop.v.v self.ii
pushbltn.v self.room
pushi.e 59
cmp.i.v EQ
bf [13]

:[1]
pushi.e 1003
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
push.v self.fvic
pushi.e 1
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [8]

:[5]
push.v 1003.xplot
pushi.e 1
add.i.v
pop.v.v global.plot
pushi.e 0
pop.v.i 1576.cutscene
pushi.e 3
pop.v.i 977.image_index
push.v 1003.conversation
pushi.e 9
cmp.i.v LT
bf [7]

:[6]
pushi.e 9
pop.v.i 1003.conversation
pushi.e 1024
conv.i.v
pushi.e 80
conv.i.v
pushi.e 620
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.sans

:[7]
b [12]

:[8]
pushglb.v global.plot
pushi.e 55
cmp.i.v LTE
bf [12]

:[9]
push.v self.vic
pushi.e 0
cmp.i.v GT
bf [11]

:[10]
pushi.e -5
pushi.e 63
dup.i 1
push.v [array]global.flag
pushi.e 1
add.i.v
pop.i.v [array]global.flag

:[11]
pushi.e 0
pop.v.i 977.image_index
pushi.e 0
pop.v.i self.fvic
pushi.e 0
pop.v.i self.vic

:[12]
pushi.e 1
pop.v.i self.image_index
pushi.e 3
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[13]
pushbltn.v self.room
pushi.e 58
cmp.i.v EQ
bf [22]

:[14]
push.v self.fvic
pushi.e 1
cmp.i.v EQ
bf [16]

:[15]
pushglb.v global.plot
pushi.e 53
cmp.i.v LT
b [17]

:[16]
push.e 0

:[17]
bf [19]

:[18]
pushi.e 53
pop.v.i global.plot
pushi.e 3
pop.v.i 977.image_index
b [21]

:[19]
pushglb.v global.plot
pushi.e 53
cmp.i.v LT
bf [21]

:[20]
pushi.e 0
pop.v.i 977.image_index
pushi.e 0
pop.v.i self.fvic
pushi.e 0
pop.v.i self.vic

:[21]
pushi.e 1
pop.v.i self.image_index
pushi.e 3
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[22]
pushbltn.v self.room
pushi.e 63
cmp.i.v EQ
bf [24]

:[23]
pushglb.v global.phasing
pushi.e 0
cmp.i.v EQ
b [25]

:[24]
push.e 0

:[25]
bf [34]

:[26]
push.v self.fvic
pushi.e 1
cmp.i.v EQ
bf [28]

:[27]
pushglb.v global.plot
pushi.e 63
cmp.i.v LT
b [29]

:[28]
push.e 0

:[29]
bf [31]

:[30]
pushi.e 63
pop.v.i global.plot
pushi.e 1378
conv.i.v
push.v 981.y
push.v 981.x
pushi.e 3
add.i.v
call.i instance_create(argc=3)
pop.v.v self.fb
pushi.e 1
push.v self.fb
conv.v.i
pop.v.i [stacktop]self.justdoit
pushi.e -1
push.v self.fb
conv.v.i
pushi.e 3
pop.v.i [array]self.alarm
pushi.e 3
pop.v.i 977.image_index
b [33]

:[31]
pushglb.v global.plot
pushi.e 63
cmp.i.v LT
bf [33]

:[32]
pushi.e 0
pop.v.i 977.image_index
pushi.e 0
pop.v.i self.fvic
pushi.e 0
pop.v.i self.vic

:[33]
pushi.e 1
pop.v.i self.image_index
pushi.e 3
pushi.e -1
pushi.e 2
pop.v.i [array]self.alarm

:[34]
push.v self.ii
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.v self.ii
push.v self.image_index
cmp.v.v NEQ
b [37]

:[36]
push.e 0

:[37]
bf [end]

:[38]
pushi.e 133
conv.i.v
call.i snd_play(argc=1)
popz.v

:[end]