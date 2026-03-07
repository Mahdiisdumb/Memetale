.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.powered
pushi.e 0
pop.v.i self.drawblack
pushi.e 0
pop.v.i self.i
pushi.e 25
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushi.e 1283
conv.i.v
pushi.e 40
conv.i.v
pushi.e 500
push.v self.i
pushi.e 20
mul.i.v
add.v.i
call.i instance_create(argc=3)
pushi.e -1
push.v self.i
conv.v.i
pop.v.v [array]self.ge
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ge
conv.v.i
pop.v.i [stacktop]self.hspeed
pushi.e 0
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ge
conv.v.i
pop.v.i [stacktop]self.rememberhspeed
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
push.v [array]self.ge
conv.v.i
pop.v.i [stacktop]self.active
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i
pushglb.v global.plot
pushi.e 182
cmp.i.v GT
bf [4]

:[3]
pushi.e 2
pop.v.i 1283.active
pushi.e 0
pop.v.i 1283.hspeed
pushi.e 2
pushi.e 1283
pushi.e 3
pop.v.i [array]self.alarm
call.i instance_destroy(argc=0)
popz.v

:[4]
pushi.e 0
pop.v.i self.flasher
pushglb.v global.hp
pop.v.v self.remhp
pushi.e 0
pop.v.i self.hptalk

:[end]