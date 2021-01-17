r = 1/4096
r_s = ((1+2)/4096)
r_50 = ((1+1)/4096)
r_100 = ((1+2)/4096)
r_200 = ((1+3)/4096)
r_300 = ((1+4)/4096)
r_500 = ((1+5)/4096)
r_m = ((1+5)/4096)
r_50C = ((1+2+1)/4096)
r_100C = ((1+2+2)/4096)
r_200C = ((1+2+3)/4096)
r_300C = ((1+2+4)/4096)
r_500C = ((1+2+5)/4096)
r_mC = ((1+2+5)/4096)

#regular shiny
Shiny <- vector()
for(x in 1:1000000) {
  t=0
  repeat {
    t=t+1
    l=runif(1)
    if (l <= r) {
      break
    } else {}
  }
  Shiny[x] = t
}

#just Shiny charm
Charm <- vector()
for(y in 1:1000000) {
  t=0
  repeat {
    t=t+1
    l=runif(1)
    if (l <= r_s) {
      break
    } else {}
  }
  Charm[y] = t
}

#Masuda alone
Masuda <- vector()
for(i in 1:1000000) {
  t=0
  repeat {
    t=t+1
    l=runif(1)
    if (l <= r_m) {
      break
    } else {}
  }
  Masuda[i] = t
}

#Masuda method with charm
Masuda_C <- vector()
for(i in 1:1000000) {
  t=0
  repeat {
    t=t+1
    l=runif(1)
    if (l <= r_mC) {
      break
    } else {}
    }
Masuda_C[i] = t
}

#Shiny Hunting, if it worked properly
Shiny_Hunt <- vector()
for(j in 1:1000000){
  t=0
  repeat {
    t = t+1
    if (t <= 49) {
      l = runif(1)
      if (l <= r) {
        break
      } else {}
    } else if (t <= 99) {
      l = runif(1)
      if (l <= r_50) {
        break
      } else {}
    } else if (t <= 199) {
      l = runif(1)
      if (l <= r_100) {
        break
      } else {}
    } else if (t <= 299) {
      l = runif(1)
      if (l <= r_200) {
        break
      } else {}
    } else if (t <= 499) {
      l = runif(1)
      if (l <= r_300) {
        break
      } else {}
    } else {
      l = runif(1)
      if (l <= r_500) {
        break
      } else {}
    }
  }
  Shiny_Hunt[j] = t
}

#Shiny Hunting, if it worked properly, with charm
Shiny_HuntC <- vector()
for(j in 1:1000000){
  t=0
  repeat {
    t = t+1
    if (t <= 49) {
      l = runif(1)
      if (l <= r_s) {
        break
      } else {}
    } else if (t <= 99) {
      l = runif(1)
      if (l <= r_50C) {
        break
      } else {}
    } else if (t <= 199) {
      l = runif(1)
      if (l <= r_100C) {
        break
      } else {}
    } else if (t <= 299) {
      l = runif(1)
      if (l <= r_200C) {
        break
      } else {}
    } else if (t <= 499) {
      l = runif(1)
      if (l <= r_300C) {
        break
      } else {}
    } else {
      l = runif(1)
      if (l <= r_500C) {
        break
      } else {}
    }
  }
  Shiny_HuntC[j] = t
}

#Shiny Hunting, as I can gather is works
False_Shiny_Hunt <- vector()
for(k in 1:1000000){
  t=0
  repeat {
    t = t+1
    if (t <= 49) {
      l = runif(1)
      if (l <= r) {
        break
      } else {}
    } else if (t <= 99) {
      l = runif(1)
      z = runif(1)
      if (z <= 0.015) {
        if (l <= r_50) {
          break
        } else {}
      } else {
        if (l <= r) {
          break
        } else {}
      }
    } else if (t <= 199) {
      l = runif(1)
      z = runif(1)
      if (z <= 0.015) {
        if (l <= r_100) {
          break
        } else {}
      } else {
        if (l <= r) {
          break
        } else {}
      }
    } else if (t <= 299) {
      l = runif(1)
      z = runif(1)
      if (z <= 0.015) {
        if (l <= r_200) {
          break
        } else {}
      } else {
        if (l <= r) {
          break
        } else {}
      }
    } else if (t <= 499) {
      l = runif(1)
      z = runif(1)
      if (z <= 0.015) {
        if (l <= r_300) {
          break
        } else {}
      } else {
        if (l <= r) {
          break
        } else {}
      }
    } else {
      l = runif(1)
      z = runif(1)
      if (z <= 0.015) {
        if (l <= r_500) {
          break
        } else {}
      } else {
        if (l <= r) {
          break
        } else {}
      }
    }
  }
  False_Shiny_Hunt[k] = t
}


#Shiny Hunting, as I can gather is works, with shiny charm
False_Shiny_HuntC <- vector()
for(k in 1:1000000){
  t=0
  repeat {
    t = t+1
    if (t <= 49) {
      l = runif(1)
      if (l <= r_s) {
        break
      } else {}
    } else if (t <= 99) {
      l = runif(1)
      z = runif(1)
      if (z <= 0.015) {
        if (l <= r_50C) {
          break
        } else {}
      } else {
        if (l <= r_s) {
          break
        } else {}
      }
    } else if (t <= 199) {
      l = runif(1)
      z = runif(1)
      if (z <= 0.015) {
        if (l <= r_100C) {
          break
        } else {}
      } else {
        if (l <= r_s) {
          break
        } else {}
      }
    } else if (t <= 299) {
      l = runif(1)
      z = runif(1)
      if (z <= 0.015) {
        if (l <= r_200C) {
          break
        } else {}
      } else {
        if (l <= r_s) {
          break
        } else {}
      }
    } else if (t <= 499) {
      l = runif(1)
      z = runif(1)
      if (z <= 0.015) {
        if (l <= r_300C) {
          break
        } else {}
      } else {
        if (l <= r_s) {
          break
        } else {}
      }
    } else {
      l = runif(1)
      z = runif(1)
      if (z <= 0.015) {
        if (l <= r_500C) {
          break
        } else {}
      } else {
        if (l <= r_s) {
          break
        } else {}
      }
    }
  }
  False_Shiny_HuntC[k] = t
}

write.csv2(Charm, file = "Charm.csv")
write.csv2(Masuda, file = "Masuda.csv")
write.csv2(Masuda_C, file = "Masuda_C.csv")
write.csv2(Shiny, file = "Shiny.csv")
write.csv2(Shiny_Hunt, file = "Shiny_Hunt.csv")
write.csv2(Shiny_HuntC, file = "Shiny_Hunt_C.csv")
write.csv2(False_Shiny_Hunt, file = "False_Shiny_Hunt.csv")
write.csv2(False_Shiny_HuntC, file = "False_Shiny_Hunt_C.csv")

l = ceiling(max(Masuda)/10)*10
j = ceiling(max(Shiny_Hunt)/10)*10
k = ceiling(max(False_Shiny_Hunt)/10)*10
c = ceiling(max(Masuda_C)/10)*10
v = ceiling(max(Shiny_HuntC)/10)*10
x = ceiling(max(False_Shiny_HuntC)/10)*10
n = ceiling(max(Charm)/10)*10
m = ceiling(max(Shiny)/10)*10

hist(Masuda, xlim=c(0,8000), breaks=seq(0, l, 10))
hist(Shiny_Hunt, xlim=c(0,8000), breaks=seq(0, j, 10))
hist(False_Shiny_Hunt, xlim=c(0,8000), breaks=seq(0, k, 10))
hist(Masuda_C, xlim=c(0,8000), breaks=seq(0, c, 10))
hist(Shiny_HuntC, xlim=c(0,8000), breaks=seq(0, v, 10))
hist(False_Shiny_HuntC, xlim=c(0,8000), breaks=seq(0, x, 10))
hist(Charm, xlim=c(0,8000), breaks=seq(0, n, 10))
hist(Shiny, xlim=c(0,8000), breaks=seq(0, m, 10))

mean(Masuda); sd(Masuda)
mean(Shiny_Hunt); sd(Shiny_Hunt)
mean(False_Shiny_Hunt); sd(False_Shiny_Hunt)
mean(Masuda_C); sd(Masuda_C)
mean(Shiny_HuntC); sd(Shiny_HuntC)
mean(False_Shiny_HuntC); sd(False_Shiny_HuntC)
mean(Charm); sd(Charm)
mean(Shiny); sd(Shiny)