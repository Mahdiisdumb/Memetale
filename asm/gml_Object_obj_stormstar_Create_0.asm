.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.con
pushi.e 14
pushi.e 10
conv.i.v
call.i random(argc=1)
add.v.i
pushi.e -1
pushi.e 4
pop.v.v [array]self.alarm
pushi.e 0
pop.v.i self.image_speed
pushi.e 215
pop.v.i self.direction
pushi.e 14
pushi.e 6
conv.i.v
call.i random(argc=1)
add.v.i
pop.v.v self.speed
pushi.e 0
pop.v.i self.counter
pushi.e 0
pop.v.i self.siner
pushi.e 1
pop.v.i self.image_xscale
pushi.e 1
pop.v.i self.image_yscale
push.v self.x
pop.v.v self.xx
push.v self.y
pop.v.v self.yy
push.v self.x
pop.v.v self.xxx
push.v self.y
pop.v.v self.yyy
push.v self.x
pop.v.v self.xxxx
push.v self.y
pop.v.v self.yyyy
push.v self.x
pop.v.v self.xxxxx
push.v self.y
pop.v.v self.yyyyy
pushi.e 0
pop.v.i self.oo
pushi.e 0
pop.v.i self.big
pushi.e 1
pushi.e -1
pushi.e 1
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.aa
pushi.e 1
pop.v.i self.h_mode

:[end]