.localvar 0 arguments

:[0]
push.d 0.8
pop.v.d self.scrollspeed
push.v self.xstart
pop.v.v self.xhome
push.v self.ystart
pop.v.v self.yhome
pushi.e 60
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.active

:[end]