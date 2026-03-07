.localvar 0 arguments

:[0]
pushi.e 307
conv.i.v
pushi.e 260
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.nod1
pushi.e 0
push.v self.nod1
conv.v.i
pop.v.i [stacktop]self.qno
push.v self.a1
push.v self.nod1
conv.v.i
pop.v.v [stacktop]self.atext
pushi.e 307
conv.i.v
pushi.e 260
conv.i.v
pushi.e 360
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.nod2
pushi.e 1
push.v self.nod2
conv.v.i
pop.v.i [stacktop]self.qno
push.v self.a2
push.v self.nod2
conv.v.i
pop.v.v [stacktop]self.atext
pushi.e 307
conv.i.v
pushi.e 340
conv.i.v
pushi.e 240
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.nod3
pushi.e 2
push.v self.nod3
conv.v.i
pop.v.i [stacktop]self.qno
push.v self.a3
push.v self.nod3
conv.v.i
pop.v.v [stacktop]self.atext
pushi.e 307
conv.i.v
pushi.e 340
conv.i.v
pushi.e 360
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.nod4
pushi.e 3
push.v self.nod4
conv.v.i
pop.v.i [stacktop]self.qno
push.v self.a4
push.v self.nod4
conv.v.i
pop.v.v [stacktop]self.atext
pushi.e -1
pushi.e 4
push.v [array]self.alarm
pushi.e 307
pushi.e 0
pop.v.v [array]self.alarm

:[end]