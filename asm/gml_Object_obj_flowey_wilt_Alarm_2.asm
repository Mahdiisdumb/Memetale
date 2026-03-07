.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i 758.visible
pushi.e 1
pop.v.i 749.visible
pushi.e 757
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
add.i.v
pushi.e -5
pushi.e 0
push.v [array]global.idealborder
pushi.e 50
add.i.v
call.i instance_create(argc=3)
pop.v.v self.fightbt2
pushi.e 2
push.v self.fightbt2
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 5
conv.i.v
call.i scr_getsprite(argc=1)
push.v self.fightbt2
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 757
conv.i.v
pushi.e -5
pushi.e 2
push.v [array]global.idealborder
pushi.e 50
add.i.v
pushi.e -5
pushi.e 1
push.v [array]global.idealborder
pushi.e 150
sub.i.v
call.i instance_create(argc=3)
pop.v.v self.sparebt2
pushi.e 3
push.v self.sparebt2
conv.v.i
pop.v.i [stacktop]self.type
pushi.e 13
conv.i.v
call.i scr_getsprite(argc=1)
push.v self.sparebt2
conv.v.i
pop.v.v [stacktop]self.sprite_index

:[end]