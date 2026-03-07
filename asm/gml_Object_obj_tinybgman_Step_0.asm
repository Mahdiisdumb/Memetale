.localvar 0 arguments

:[0]
push.v self.c
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.vspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 2
pop.v.i self.c

:[2]
push.v self.c
pushi.e 3
cmp.i.v EQ
bf [4]

:[3]
push.d 0.2
pop.v.d self.hspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 4
pop.v.i self.c

:[4]
push.v self.c
pushi.e 5
cmp.i.v EQ
bf [6]

:[5]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 6
pop.v.i self.c

:[6]
push.v self.c
pushi.e 7
cmp.i.v EQ
bf [8]

:[7]
push.d -0.2
pop.v.d self.hspeed
push.d 0.25
pop.v.d self.image_speed
pushi.e 60
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 8
pop.v.i self.c

:[8]
push.v self.c
pushi.e 9
cmp.i.v EQ
bf [10]

:[9]
pushi.e 0
pop.v.i self.hspeed
pushi.e 0
pop.v.i self.image_speed
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 10
pop.v.i self.c

:[10]
push.v self.c
pushi.e 11
cmp.i.v EQ
bf [12]

:[11]
push.d 0.2
pop.v.d self.hspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 12
pop.v.i self.c

:[12]
push.v self.c
pushi.e 13
cmp.i.v EQ
bf [14]

:[13]
pushi.e 0
pop.v.i self.hspeed
push.d -0.2
pop.v.d self.vspeed
push.d 0.2
pop.v.d self.image_speed
pushi.e 40
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 14
pop.v.i self.c

:[14]
push.v self.c
pushi.e 15
cmp.i.v EQ
bf [16]

:[15]
pushi.e 0
pop.v.i self.vspeed
pushi.e 16
pop.v.i self.c
pushi.e 30
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[16]
push.v self.c
pushi.e 17
cmp.i.v EQ
bf [end]

:[17]
pushi.e 972
pushenv [19]

:[18]
pushi.e 0
pop.v.i self.man

:[19]
popenv [18]
pushi.e 972
pushenv [21]

:[20]
pushi.e 0
pop.v.i self.image_index

:[21]
popenv [20]
call.i instance_destroy(argc=0)
popz.v

:[end]