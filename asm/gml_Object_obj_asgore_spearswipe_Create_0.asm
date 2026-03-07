.localvar 0 arguments

:[0]
push.v self.x
pushi.e 180
add.i.v
pop.v.v self.x
pushi.e 0
pop.v.i self.i

:[1]
push.v self.i
pushi.e 10
cmp.i.v LT
bf [3]

:[2]
pushi.e 1
pushi.e -1
push.v self.i
conv.v.i
pop.v.i [array]self.type
push.v self.i
pushi.e 1
add.i.v
pop.v.v self.i
b [1]

:[3]
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 1
pop.v.v [array]self.type
pushi.e 2
pushi.e -1
pushi.e 2
pop.v.i [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 3
pop.v.v [array]self.type
pushi.e 1
pushi.e -1
pushi.e 4
pop.v.i [array]self.type
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i choose(argc=2)
pushi.e -1
pushi.e 5
pop.v.v [array]self.type
pushi.e 2
pop.v.i self.amt
pushi.e 0
pop.v.i self.curamt
pushi.e 8
pop.v.i self.initswipewait
pushi.e 0
pop.v.i self.swipewait
pushi.e 0
pop.v.i self.swipetimer
pushi.e 0
pop.v.i self.image_speed
pushi.e 2
pop.v.i self.image_xscale
pushi.e 2
pop.v.i self.image_yscale
pushi.e 0
pop.v.i self.con
pushi.e 0
pop.v.i self.quick
push.d 0.5
pop.v.d self.cutspeed
pushi.e 0
pop.v.i self.hitted
push.s "music/sfx_cinematiccut.ogg"@2720
conv.s.v
call.i caster_load(argc=1)
pop.v.v self.cutsfx
pushi.e 0
pop.v.i self.cutsfxN
push.v self.cutsfx
pushi.e -1
pushi.e 0
pop.v.v [array]self.cutsfxI
pushi.e 0
pop.v.i 490.visible
pushi.e 0
pop.v.i self.cutsdone

:[end]