.localvar 0 arguments

:[0]
pushi.e 1
pop.v.i self.visible
pushi.e 1
pop.v.i self.active
push.v self.text
call.i string_width(argc=1)
pop.v.v self.width

:[end]