.localvar 0 arguments

:[0]
push.v self.x
pop.v.v self.xinit
pushi.e 0
pop.v.i self.anim
pushi.e 1
pop.v.i self.on
pushi.e 0
pop.v.i self.xm
pushi.e 0
pop.v.i self.s
pushi.e 30
pop.v.i self.sf
pushi.e 6
pop.v.i self.sp
pushi.e 3
pop.v.i self.vspeed
push.v self.x
push.v self.sprite_width
add.v.v
pop.v.v self.x
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.visible
pushi.e 0
pop.v.i self.c

:[end]