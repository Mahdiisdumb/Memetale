.localvar 0 arguments

:[0]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i SCR_GAMESTART(argc=5)
popz.v
pushi.e 0
pop.v.i self.time
pushi.e 0
pop.v.i self.image_speed
pushi.e 0
pop.v.i self.jjjjjj
pushi.e 20
dup.i 0
push.i 0
cmp.i.i LTE
bt [2]

:[1]
pushi.e 0
pushi.e -5
push.v self.jjjjjj
conv.v.i
pop.v.i [array]global.tempvalue
push.v self.jjjjjj
pushi.e 1
add.i.v
pop.v.v self.jjjjjj
push.i 1
sub.i.i
dup.i 0
conv.i.b
bt [1]

:[2]
popz.i
call.i ossafe_savedata_load(argc=0)
popz.v
pushi.e 0
pop.v.i self.started

:[end]