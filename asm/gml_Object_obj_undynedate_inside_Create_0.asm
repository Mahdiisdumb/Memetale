.localvar 0 arguments

:[0]
pushi.e 1581
conv.i.v
pushi.e 115
conv.i.v
pushi.e 177
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.table
push.v self.table
conv.v.i
pushenv [2]

:[1]
call.i scr_depth(argc=0)
popz.v

:[2]
popenv [1]
pushi.e 1580
conv.i.v
pushi.e 100
conv.i.v
pushi.e 60
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.piano
push.v self.piano
conv.v.i
pushenv [4]

:[3]
call.i scr_depth(argc=0)
popz.v

:[4]
popenv [3]
pushi.e 1575
conv.i.v
push.v 3.y
pushi.e 34
sub.i.v
push.v 3.x
call.i scr_marker(argc=3)
pop.v.v self.sword
push.v self.sword
conv.v.i
pushenv [6]

:[5]
call.i scr_depth(argc=0)
popz.v

:[6]
popenv [5]
pushi.e 1573
conv.i.v
pushi.e 57
conv.i.v
pushi.e 104
conv.i.v
call.i scr_marker(argc=3)
pop.v.v self.teacup
push.v self.teacup
conv.v.i
pushenv [8]

:[7]
call.i scr_depth(argc=0)
popz.v

:[8]
popenv [7]
pushi.e 1
pop.v.i self.con
pushi.e 1
pop.v.i global.interact
pushi.e 40
pushi.e -1
pushi.e 4
pop.v.i [array]self.alarm
pushi.e -3
conv.i.v
call.i caster_free(argc=1)
popz.v
pushi.e 2
pop.v.i global.facing
pushi.e 1034
conv.i.v
pushi.e 140
conv.i.v
pushi.e 120
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.papyrus
push.v self.papyrus
conv.v.i
push.v [stacktop]self.usprite
push.v self.papyrus
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.fun
pushi.e 0
push.v self.papyrus
conv.v.i
pop.v.i [stacktop]self.image_speed
pushi.e 1063
conv.i.v
pushi.e 80
conv.i.v
pushi.e 140
conv.i.v
call.i instance_create(argc=3)
pop.v.v self.undyne
push.v self.undyne
conv.v.i
push.v [stacktop]self.dtsprite
push.v self.undyne
conv.v.i
pop.v.v [stacktop]self.sprite_index
pushi.e 1
pop.v.i self.con
push.v self.con
pushi.e 104
cmp.i.v EQ
bf [end]

:[9]
push.s "music/undynetruetheme.ogg"@2853
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
pushi.e 1
conv.i.v
push.d 0.9
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
pushi.e 1
pop.v.i global.phasing
pushi.e 104
pop.v.i self.con
pushi.e 208
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.x
pushi.e 10
push.v self.undyne
conv.v.i
pop.v.i [stacktop]self.y
pushi.e -4
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_object
pushi.e 1
pop.v.i 1576.cutscene
pushi.e 200
pop.v.i 1576.x
pushi.e 140
pop.v.i 1576.y

:[end]