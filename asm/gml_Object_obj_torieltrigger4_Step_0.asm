.localvar 0 arguments

:[0]
push.v self.conversation
pushi.e 3
cmp.i.v EQ
bf [2]

:[1]
pushi.e 864
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [3]

:[2]
push.e 0

:[3]
bf [14]

:[4]
push.v 864.path_position
pushi.e 1
cmp.i.v EQ
bf [14]

:[5]
push.s "music/toriel.ogg"@2613
conv.s.v
call.i caster_load(argc=1)
pop.v.v global.currentsong
push.d 0.86
conv.d.v
push.d 0.7
conv.d.v
pushglb.v global.currentsong
call.i caster_loop(argc=3)
popz.v
push.v self.tor
conv.v.i
pushenv [7]

:[6]
call.i path_end(argc=0)
popz.v

:[7]
popenv [6]
push.v self.tor
conv.v.i
pushenv [9]

:[8]
pushi.e 180
pop.v.i self.direction

:[9]
popenv [8]
push.v self.tor
conv.v.i
pushenv [11]

:[10]
pushi.e 3
pop.v.i self.facing

:[11]
popenv [10]
push.v self.tor
conv.v.i
pushenv [13]

:[12]
pushi.e 1198
pop.v.i self.sprite_index

:[13]
popenv [12]
pushi.e 220
pop.v.i global.msc
pushi.e 4
pop.v.i global.typer
pushi.e 1
pop.v.i global.facechoice
pushi.e 780
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
pushi.e 4
pop.v.i self.conversation
pushi.e 201
pushi.e -5
pushi.e 0
pop.v.i [array]global.phone
pushi.e 203
pushi.e -5
pushi.e 1
pop.v.i [array]global.phone
pushi.e 204
pushi.e -5
pushi.e 2
pop.v.i [array]global.phone
pushi.e 205
pushi.e -5
pushi.e 3
pop.v.i [array]global.phone
pushi.e 1
pushi.e -5
pushi.e 2
pop.v.i [array]global.menuchoice
pushi.e 1341
conv.i.v
pushi.e 100
conv.i.v
pushi.e 160
conv.i.v
call.i instance_create(argc=3)
popz.v

:[14]
push.v self.conversation
pushi.e 4
cmp.i.v EQ
bf [16]

:[15]
pushi.e 780
conv.i.v
call.i instance_exists(argc=1)
pushi.e 0
cmp.i.v EQ
b [17]

:[16]
push.e 0

:[17]
bf [end]

:[18]
pushi.e 886
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
popz.v
push.v self.tor
conv.v.i
pushenv [20]

:[19]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 41
conv.i.v
call.i path_start(argc=4)
popz.v

:[20]
popenv [19]
pushi.e 63
conv.i.v
call.i script_execute(argc=1)
popz.v
pushi.e 0
pop.v.i global.interact
call.i instance_destroy(argc=0)
popz.v

:[end]