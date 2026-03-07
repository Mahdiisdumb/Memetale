.localvar 0 arguments

:[0]
pushi.e 10
pop.v.i self.intensity
pushi.e 1
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm
pushi.e 0
pop.v.i self.self_d
pushi.e 513
pushenv [2]

:[1]
push.v self.self_d
pushi.e 1
add.i.v
pop.v.v self.self_d
pushi.e 0
conv.i.v
call.i event_user(argc=1)
popz.v

:[2]
popenv [1]
pushi.e 1
pop.v.i self.self_d
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_xview
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.view_yview

:[end]