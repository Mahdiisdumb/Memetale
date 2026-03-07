.localvar 0 arguments

:[0]
pushi.e 30
pushi.e -1
pushi.e 10
pop.v.i [array]self.alarm
push.v self.con2
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 0
pop.v.i self.next
push.v self.mypart1
conv.v.i
pushenv [3]

:[2]
push.d 0.4
pop.v.d self.rotmod
pushi.e 1
pop.v.i self.speedmod

:[3]
popenv [2]

:[4]
push.v self.hp
pushi.e 1
sub.i.v
pop.v.v self.hp
push.v self.hp
pushi.e 275
cmp.i.v LT
bf [6]

:[5]
push.v self.con2
pushi.e 3
cmp.i.v LT
b [7]

:[6]
push.e 0

:[7]
bf [9]

:[8]
pushi.e 3
pop.v.i self.con2

:[9]
push.v self.hp
pushi.e 195
cmp.i.v LTE
bf [11]

:[10]
push.v self.con2
pushi.e 5
cmp.i.v EQ
b [12]

:[11]
push.e 0

:[12]
bf [14]

:[13]
pushi.e 0
pop.v.i self.next
pushi.e 6
pop.v.i self.con2
pushi.e 8
conv.i.v
push.v self.ystart
push.v self.xstart
call.i move_towards_point(argc=3)
popz.v
push.v global.turntimer
pushi.e 80
add.i.v
pop.v.v global.turntimer

:[14]
push.v self.con2
pushi.e 14
cmp.i.v EQ
bf [16]

:[15]
pushi.e 15
pop.v.i self.con2

:[16]
push.v self.con2
pushi.e 28
cmp.i.v EQ
bf [end]

:[17]
pushi.e 784
pushenv [19]

:[18]
call.i instance_destroy(argc=0)
popz.v

:[19]
popenv [18]
push.v self.blcon
conv.v.i
pushenv [21]

:[20]
call.i instance_destroy(argc=0)
popz.v

:[21]
popenv [20]
pushi.e 29
pop.v.i self.con2
pushglb.v global.batmusic
call.i caster_free(argc=1)
popz.v
push.v self.mypart1
conv.v.i
pushenv [23]

:[22]
pushi.e 0
pop.v.i self.rotmod
pushi.e 0
pop.v.i self.speedmod

:[23]
popenv [22]
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm

:[end]