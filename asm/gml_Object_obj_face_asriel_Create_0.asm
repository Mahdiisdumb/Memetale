.localvar 0 arguments

:[0]
call.i event_inherited(argc=0)
popz.v
push.d 0.25
pop.v.d self.image_speed
pushi.e 776
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [4]

:[1]
pushi.e 776
pushenv [3]

:[2]
call.i instance_destroy(argc=0)
popz.v

:[3]
popenv [2]

:[4]
pushi.e 2185
pushi.e -1
pushi.e 0
pop.v.i [array]self.u
pushi.e 2186
pushi.e -1
pushi.e 1
pop.v.i [array]self.u
pushi.e 2187
pushi.e -1
pushi.e 2
pop.v.i [array]self.u
pushi.e 2188
pushi.e -1
pushi.e 3
pop.v.i [array]self.u
pushi.e 2189
pushi.e -1
pushi.e 4
pop.v.i [array]self.u
pushi.e 2190
pushi.e -1
pushi.e 5
pop.v.i [array]self.u
pushi.e 2191
pushi.e -1
pushi.e 6
pop.v.i [array]self.u
pushi.e 2192
pushi.e -1
pushi.e 7
pop.v.i [array]self.u
pushi.e 2193
pushi.e -1
pushi.e 8
pop.v.i [array]self.u
pushi.e 2194
pushi.e -1
pushi.e 9
pop.v.i [array]self.u
pushi.e -1
pushglb.v global.faceemotion
conv.v.i
push.v [array]self.u
pop.v.v self.sprite_index

:[end]