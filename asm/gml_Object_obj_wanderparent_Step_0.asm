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
pushglb.v global.interact
pushi.e 1
cmp.i.v LT
bf [8]

:[1]
push.v self.halt
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.v self.memoryspeed
pop.v.v self.speed
push.v self.memoryispeed
pop.v.v self.image_speed

:[3]
pushi.e -1
pushi.e 0
dup.i 1
push.v [array]self.movementalarm
pushi.e 1
sub.i.v
pop.i.v [array]self.movementalarm
pushi.e -1
pushi.e 1
dup.i 1
push.v [array]self.movementalarm
pushi.e 1
sub.i.v
pop.i.v [array]self.movementalarm
pushi.e -1
pushi.e 0
push.v [array]self.movementalarm
pushi.e 0
cmp.i.v EQ
bf [5]

:[4]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.i
push.v self.i
pushi.e 90
mul.i.v
pop.v.v self.direction
pushi.e 2
pop.v.i self.speed
pushi.e 0
pop.v.i self.stopped
pushi.e 1
pop.v.i self.image_index
push.d 0.2
pop.v.d self.image_speed
pushi.e 10
pushi.e 10
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.i
pushi.e -1
pushi.e 1
pop.v.v [array]self.movementalarm
pushi.e 0
conv.i.v
call.i scr_npcdir(argc=1)
popz.v

:[5]
pushi.e -1
pushi.e 1
push.v [array]self.movementalarm
pushi.e 0
cmp.i.v EQ
bf [7]

:[6]
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.image_index
pushi.e 0
pop.v.i self.speed
pushi.e 0
pop.v.i self.halt
pushi.e 1
pop.v.i self.stopped
pushi.e 30
pushi.e 20
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
add.v.i
pushi.e -1
pushi.e 0
pop.v.v [array]self.movementalarm

:[7]
b [12]

:[8]
push.v self.stopped
pushi.e 0
cmp.i.v EQ
bf [12]

:[9]
push.v self.image_speed
pop.v.v self.memoryispeed
push.v self.speed
pop.v.v self.memoryspeed
push.v self.myinteract
pushi.e 0
cmp.i.v EQ
bf [11]

:[10]
pushi.e 0
pop.v.i self.image_speed

:[11]
pushi.e 0
pop.v.i self.speed
pushi.e 1
pop.v.i self.stopped
pushi.e 1
pop.v.i self.halt

:[12]
push.v self.myinteract
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 1
pop.v.i global.interact
push.d 0.2
pop.v.d self.image_speed
pushi.e 0
conv.i.v
call.i scr_npcdir(argc=1)
popz.v
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.myinteract

:[14]
push.v self.myinteract
pushi.e 3
cmp.i.v EQ
bf [end]

:[15]
push.v self.mydialoguer
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
bf [end]

:[16]
pushi.e 0
pop.v.i global.interact
pushi.e 0
pop.v.i self.myinteract
push.v self.memoryispeed
pop.v.v self.image_speed
pushi.e 0
conv.i.v
call.i scr_npcdir(argc=1)
popz.v

:[end]