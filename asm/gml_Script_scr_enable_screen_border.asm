.localvar 0 arguments
.localvar 1 flag 170

:[0]
pushbltn.v self.argument0
pop.v.v local.flag
pushloc.v local.flag
pushi.e 0
cmp.i.v NEQ
pop.v.b local.flag
pushloc.v local.flag
pushglb.v global.screen_border_active
cmp.v.v NEQ
bf [end]

:[1]
pushloc.v local.flag
pushi.e 0
cmp.i.v NEQ
pop.v.b global.screen_border_active
pushi.e 0
pop.v.i global.screen_border_state
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_id
pushi.e 0
pop.v.i global.screen_border_dynamic_fade_level

:[end]