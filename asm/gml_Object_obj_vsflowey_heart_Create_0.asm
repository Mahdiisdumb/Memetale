.localvar 0 arguments

:[0]
pushi.e 50
pop.v.i global.my_hp
pushi.e 0
pop.v.i global.my_inv
pushi.e 4
conv.i.v
call.i event_user(argc=1)
popz.v
pushi.e 0
pop.v.i self.image_speed
pushi.e 1
pop.v.i self.move
pushi.e 113
pop.v.i global.typer
pushi.e 0
pop.v.i global.msc
push.s "* Big boner down the lane^8 %%"@51297
pushi.e -5
pushi.e 0
pop.v.s [array]global.msg
push.s "* Big boner down the lane^4 %%"@51298
pushi.e -5
pushi.e 1
pop.v.s [array]global.msg
push.s "* Big boner down the lane^4 %%"@51298
pushi.e -5
pushi.e 2
pop.v.s [array]global.msg
push.s "* Big boner down the lane^4 %%"@51298
pushi.e -5
pushi.e 3
pop.v.s [array]global.msg
push.s "* Big boner down the lane^4 %%"@51298
pushi.e -5
pushi.e 4
pop.v.s [array]global.msg
push.s "%%%"@16
pushi.e -5
pushi.e 5
pop.v.s [array]global.msg
pushi.e 0
pop.v.i self.special

:[end]