system.time(gs <- go.socket("z <- rnorm(10^8)"))
print("Oh yeah! Don't have to wait for it at all!")
system.time(print(evalServer.nb(gs$con,"summary(z)")))
print("Have to wait for this one though")
close.go.socket(gs)
