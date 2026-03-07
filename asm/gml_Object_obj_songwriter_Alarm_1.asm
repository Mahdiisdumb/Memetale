.localvar 0 arguments

:[0]
push.v self.sting
call.i string_length(argc=1)
pop.v.v self.stringlength
pushi.e 0
pop.v.i self.scoord
pushi.e 1
pop.v.i self.active
push.s ""@36
pop.v.s self.newstring

:[end]