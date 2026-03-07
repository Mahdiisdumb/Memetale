.localvar 0 arguments

:[0]
pushi.e 1
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pushi.e 2
add.i.v
pop.v.v self.r
pushi.e 2
conv.i.v
push.v self.r
pushi.e 129
conv.i.v
call.i script_execute(argc=3)
popz.v
push.v self.xx
pop.v.v self.x
push.v self.yy
pop.v.v self.y
push.v self.bullettype
pushi.e 0
cmp.i.v EQ
bf [4]

:[1]
pushi.e 618
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [3]

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg
pushi.e 0
push.v self.iii
conv.v.i
pop.v.i [stacktop]self.bullettype

:[3]
b [6]

:[4]
pushi.e 3
conv.i.v
call.i random(argc=1)
call.i round(argc=1)
pop.v.v self.r
pushi.e 8
conv.i.v
push.v self.r
pushi.e 129
conv.i.v
call.i script_execute(argc=3)
popz.v
pushi.e 622
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [6]

:[5]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg

:[6]
push.v self.firingspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]