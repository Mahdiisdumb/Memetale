.localvar 0 arguments

:[0]
pushi.e 0
pop.v.i self.thensc
push.v self.check
conv.v.i
push.v [stacktop]self.x
push.v self.check
conv.v.i
push.v [stacktop]self.hspeed
div.v.v
call.i floor(argc=1)
push.v self.fatalx
push.v self.check
conv.v.i
push.v [stacktop]self.hspeed
div.v.v
call.i floor(argc=1)
sub.v.v
call.i abs(argc=1)
pop.v.v self.sc
push.v self.sc
pushi.e 26
cmp.i.v LT
bf [2]

:[1]
pushi.e 10
pop.v.i self.thensc

:[2]
push.v self.sc
pushi.e 20
cmp.i.v LT
bf [4]

:[3]
pushi.e 15
pop.v.i self.thensc

:[4]
push.v self.sc
pushi.e 16
cmp.i.v LT
bf [6]

:[5]
pushi.e 30
pop.v.i self.thensc

:[6]
push.v self.sc
pushi.e 12
cmp.i.v LT
bf [8]

:[7]
pushi.e 50
pop.v.i self.thensc

:[8]
push.v self.sc
pushi.e 8
cmp.i.v LT
bf [10]

:[9]
pushi.e 75
pop.v.i self.thensc

:[10]
push.v self.sc
pushi.e 5
cmp.i.v LT
bf [12]

:[11]
pushi.e 83
pop.v.i self.thensc

:[12]
push.v self.sc
pushi.e 3
cmp.i.v LT
bf [14]

:[13]
pushi.e 90
pop.v.i self.thensc

:[14]
push.v self.sc
pushi.e 2
cmp.i.v LT
bf [16]

:[15]
pushi.e 95
pop.v.i self.thensc

:[16]
push.v self.sc
pushi.e 1
cmp.i.v LT
bf [18]

:[17]
pushi.e 110
pop.v.i self.thensc
push.v self.fatalx
push.v self.check
conv.v.i
pop.v.v [stacktop]self.x

:[18]
push.v self.myscore
push.v self.thensc
add.v.v
pop.v.v self.myscore
pushi.e 721
conv.i.v
push.v self.check
conv.v.i
push.v [stacktop]self.y
push.v self.check
conv.v.i
push.v [stacktop]self.x
call.i instance_create(argc=3)
pop.v.v self.fadebar
push.v self.sc
pushi.e 1
cmp.i.v LT
bf [20]

:[19]
pushi.e 2
push.v self.fadebar
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 1
push.v self.fadebar
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 54
conv.i.v
call.i snd_play(argc=1)
popz.v
b [22]

:[20]
push.v self.sc
pushi.e 5
cmp.i.v LT
bf [22]

:[21]
pushi.e 1
push.v self.fadebar
conv.v.i
pop.v.i [stacktop]self.image_index
pushi.e 55
conv.i.v
call.i snd_play(argc=1)
popz.v

:[22]
push.v self.check
conv.v.i
pushenv [24]

:[23]
call.i instance_destroy(argc=0)
popz.v

:[24]
popenv [23]

:[end]