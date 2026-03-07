.localvar 0 arguments

:[0]
push.v self.text
call.i string_height(argc=1)
push.v self.size
mul.v.v
push.v self.bigscale
mul.v.v
pop.v.v self.height
pushi.e 1
pop.v.i self.active
push.v self.myspeed
pop.v.v self.speed
push.d 0.1
pop.v.d self.friction

:[end]