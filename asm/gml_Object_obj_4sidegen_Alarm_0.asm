.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 130
conv.i.v
call.i script_execute(argc=4)
popz.v
push.v self.xx
pop.v.v self.x
push.v self.yy
pop.v.v self.y
push.v self.bullettype
pushi.e 0
cmp.i.v EQ
bf [5]

:[1]
pushi.e 50
conv.i.v
pushi.e 14
conv.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 130
conv.i.v
call.i script_execute(argc=4)
popz.v
push.v self.xx
pop.v.v self.x
push.v self.yy
pop.v.v self.y
pushi.e 648
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [5]

:[2]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.iii
conv.v.i
pushenv [4]

:[3]
pushi.e 1
pop.v.i self.parent

:[4]
popenv [3]

:[5]
push.v self.bullettype
pushi.e 1
cmp.i.v EQ
bf [10]

:[6]
pushi.e 0
conv.i.v
pushi.e 14
conv.i.v
pushi.e 4
conv.i.v
call.i random(argc=1)
call.i floor(argc=1)
pushi.e 131
conv.i.v
call.i script_execute(argc=4)
popz.v
push.v self.xx
pop.v.v self.x
push.v self.yy
pop.v.v self.y
pushi.e 649
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
pop.v.v self.iii
push.v self.iii
call.i instance_exists(argc=1)
conv.v.b
bf [10]

:[7]
pushi.e -5
push.v self.myself
conv.v.i
push.v [array]global.monsteratk
push.v self.iii
conv.v.i
pop.v.v [stacktop]self.dmg
push.v self.iii
conv.v.i
pushenv [9]

:[8]
pushi.e 1
pop.v.i self.parent

:[9]
popenv [8]

:[10]
push.v self.firingspeed
pushi.e -1
pushi.e 0
pop.v.v [array]self.alarm

:[end]