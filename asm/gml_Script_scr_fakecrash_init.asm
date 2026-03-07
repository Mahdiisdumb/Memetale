.localvar 0 arguments

:[0]
pushbltn.v self.current_time
pushi.e 5000
add.i.v
pop.v.v self.fakecrash_blank_time
pushbltn.v self.current_time
pushi.e 13000
add.i.v
pop.v.v self.fakecrash_reset_time
pushi.e 0
pop.v.i self.fakecrash_stopped_sounds
pushi.e 0
pop.v.i self.fakecrash_surface

:[end]