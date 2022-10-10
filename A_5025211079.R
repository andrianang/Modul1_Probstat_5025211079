#Soal 1
#Diketahui
x = 3
p = 0.2

#a.
pel = dgeom(x, p)
paste("Peluang : ", pel)

#b.
test = 1000
rata = mean(rgeom(test, p) == x)
paste("Peluang ", test, " data random : ", rata)

#c
#Berdasarkan hasil dari a dan b, terlihat bahwa pada hasil b terus berubah,
#sedangkan untuk hasil b bernilai konsisten.

#d
hist(rgeom(test,p))

#e
rata_1 = 1/p
paste("Rataan : ", rata_1)

varian_1 = (1-p)/(p^2)

paste("Rataan : ", rata_1)
paste("Varian : ", varian_1)

#Soal 2
#Diketahui
total_pasien = 20
peluang_sembuh =  0.2

#a.
pasien_sembuh = 4
peluang_binom = dbinom(pasien_sembuh, total_pasien, peluang_sembuh)
paste("Peluang : ", peluang_binom)

#b
interval = 0:20
plot(interval, dbinom(interval, total_pasien, peluang_sembuh), type='h')

#c
rata_2 = pasien_sembuh * peluang_sembuh
paste("Rataan : ", rata_2)
varian_2 = rata_2 * (1-peluang_sembuh)
paste("Varian : ", varian_2)

#Soal 3
#Diketahui
rata_3 = 4.5

#a
bayi_lahir = 6
peluang_3 = dpois(bayi_lahir, rata_3)
paste("Peluang : ", peluang_3)

#b
set.seed(0) #simulation
interval = 1:365
hist(rpois(interval, rata_3), type="h")

#c
#Hasil pada bagian A dikalikan 365 akan memiliki hasil yang mendekati hasil pada bagian b

#d
rata = rata_3
varian = rata_3
paste("Rataan : ", rata)
paste("Varian : ", varian)

#Soal 4
x = 2
v = 10

#a
pel = dchisq(x, v)

#b
x = 100
hist(rchisq(x,v), main="Distribusi Chi-Square dengan 100 data random")

#c
rata = v
varian = 2*v
paste("Rataan : ", rata)
paste("Varian : ", varian)

#Soal 5
lambda = 3

#a
#misal size = 5
size = 5
pel = rexp(size,rate = lambda)

paste("Hasil: ", pel)

#b
hist(rexp(10, rate = lambda), main = "Distribusi Exponensial untuk 10 bilangan random")
hist(rexp(100, rate = lambda), main ="Distribusi Exponential untuk 100 bilangan random")
hist(rexp(1000, rate = lambda), main ="Distribusi Exponential untuk 1000 bilangan random")
hist(rexp(10000, rate = lambda), main ="Distribusi Exponential untuk 10000 bilangan random")

#c
set.seed(1)
n = 100
lambda = 3
rata = mean(rexp(n, rate = lambda))
varian = sd(rexp(n, rate = lambda))^2

paste("Rataan : ", rata)
paste("Varian : ", varian)

#Soal 6
n = 100
mean = 50
sd = 8

#a
z_score = rnorm(n, mean, sd)

plot(z_score, main="Distribusi normal untuk 100 data random")

#b
hist(z_score, breaks = 50, main="5025211079_Andrian_DNhistogram")


#c
varian = sd(z_score)^2
paste("Varian : ", varian)

