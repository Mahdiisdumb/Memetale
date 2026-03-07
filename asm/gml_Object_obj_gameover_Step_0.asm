.localvar 0 arguments

:[0]
push.v self.unpersist
pushi.e 1
cmp.i.v EQ
bf [4]

:[1]
pushglb.v global.screen_border_activate_on_game_over
conv.v.b
bf [3]

:[2]
pushi.e 0
pop.v.i global.screen_border_activate_on_game_over
pushi.e 1
pop.v.i global.screen_border_active

:[3]
pushglb.v global.currentroom
call.i room_goto(argc=1)
popz.v

:[4]
pushbltn.v self.room
pushglb.v global.currentroom
cmp.v.v EQ
bf [end]

:[5]
pushi.e 0
pop.v.i self.room_persistent
pushi.e 62
conv.i.v
call.i script_execute(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]