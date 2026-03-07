.localvar 0 arguments

:[0]
pushi.e 618
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [end]

:[1]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 2
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.bullettype

:[end]