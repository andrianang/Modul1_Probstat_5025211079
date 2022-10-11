# Modul1_Probstat_5025211079

Soal 1
```R
Diketahui
x = 3
p = 0.2
```

a.
```
dgeom(x,p) : fungsi geometri distribusi
x : percobaan gagal sebelum sukses pertama 
p : peluang sukses 
```
```R
Code : 
pel = dgeom(x, p)
paste("Peluang : ", pel)
```

b. 
```
rgeom(n, p) = menghasilkan kumpulan data secara random
n : jumlah data
p : probabilitas

mean() : fungsi rata-rata
```
```R
Code : 
test = 1000
rata = mean(rgeom(test, p) == x)
paste("Peluang ", test, " data random : ", rata)
```
c. 
```
Hasil dari bagian a mendekati dengan mean generated distribusi geometric
```

d.
```
hist() : membentuk histogram
```
```R
hist(rgeom(test,p))
```
![soal_1_d](https://user-images.githubusercontent.com/91018876/194866461-cb3d3c9e-10ea-4b9d-ab11-e053d2a045b1.png)

e.
``` 
Rata-rata : 1/p
Varian : (1-p)/(p^2)
```
```R
Code : 
rata_1 = 1/p
paste("Rataan : ", rata_1)

varian_1 = (1-p)/(p^2)

paste("Rataan : ", rata_1)
paste("Varian : ", varian_1)
```

Soal 2
```
Diketahui
total_pasien = 20
peluang_sembuh =  0.2
```

a.
```
dbinom(x, n, p) : fungsi distribusi binomial
x : jumlah sukses
n : jumlah data
p : problabilitas sukses
```
```R
Code : 
pasien_sembuh = 4
peluang_binom = dbinom(pasien_sembuh, total_pasien, peluang_sembuh)
paste("Peluang : ", peluang_binom)
```
b.
```
interval dari 1 sampai 20
plot(x, y) : membuat sebuat grafik dari beberapa nilai x dan y
```
```R
Code : 
interval = 1:20
plot(interval, dbinom(interval, total_pasien, peluang_sembuh), type='h')
```
![soal_2_b](https://user-images.githubusercontent.com/91018876/194879515-5c8f4da5-91f5-4be8-abe8-23cb89aaf57e.png)
c.
```R
Code : 
rata_2 = pasien_sembuh * peluang_sembuh
paste("Rata : ", rata_2)
varian_2 = rata_2 * (1-peluang_sembuh)
paste("Varian : ", varian_2)
```

Soal 3
```
Diketahui :
rata_3 = 4.5
```
a.
```
dpois(x, lambda) : fungsi distribusi poisson 
x : jumlah sukses
lambda : rata-rata
```

```R
Code : 
bayi_lahir = 6
peluang_3 = dpois(bayi_lahir, rata_3)
paste("Peluang : ", peluang_3)
```
b.
```
rpois(q, lambda) : menghasilkan kumpulan bilangan random dari distribusi poisson yang diberikan
q : jumlah bilangan random yang ingin dihasilkan
lambda : rata-rata

```
```
Code : 
set.seed(0) #simulation
interval = 1:365
hist(rpois(interval, rata_3), type="h")
```
![soal_3_b](https://user-images.githubusercontent.com/91018876/194882575-8896bc3e-ae74-44ed-bea9-eefeebf7ae53.png)

c.
```
Rataan : rata-rata
Varians : rata-rata
```
```R 
Code : 
rata = rata_3
varian = rata_3
paste("Rataan : ", rata)
paste("Varian : ", varian)
```

Soal 4
```
Diketahui : 
x = 2
v = 10
```
a.
```
dchisq(x,y) : fungsi distribusi Chi Square
x : Vektor nilai-x
y: Derajat Kebebasan
```
```R
Code :
pel = dchisq(x, v)
```
b.
```
rchisq() : fungsi random distribusi Chi Square
```
```R
Code :
x = 100
hist(rchisq(x,v), main="Distribusi Chi-Square dengan 100 data random")
```
![soal_4_b](https://user-images.githubusercontent.com/91018876/194884542-1727bff6-cf99-4291-8a45-12f59919930a.png)

c.
```
Rataan : derajat kebebasan
Varian : 2 * derajat kebebasan

```R
Code : 
rata = v
varian = 2*v
paste("Rataan : ", rata)
paste("Varian : ", varian)
```

Soal 5
```
Diketahui :
lambda = 5
```
a. 
```
rexp() : simulasi kumpulan bilangan random dari distribusi exponential.
```
```R
Code :
#misal size = 5
size = 5
pel = rexp(size,rate = lambda)
paste("Hasil: ", pel)
```
b.
```R
Code :
hist(rexp(10, rate = lambda), main = "Distribusi Exponensial untuk 10 bilangan random")
hist(rexp(100, rate = lambda), main ="Distribusi Exponential untuk 100 bilangan random")
hist(rexp(1000, rate = lambda), main ="Distribusi Exponential untuk 1000 bilangan random")
hist(rexp(10000, rate = lambda), main ="Distribusi Exponential untuk 10000 bilangan random")
```
![soal_5_b_1](https://user-images.githubusercontent.com/91018876/194885932-761371eb-59d3-451d-b04b-c4e837fb8464.png)
![soal_5_b_2](https://user-images.githubusercontent.com/91018876/194885934-01572f5c-0c41-4b81-8de5-09b64dc5a159.png)
![soal_5_b_3](https://user-images.githubusercontent.com/91018876/194885926-8f3bea8b-f2bf-43e4-8965-1a6d82e4647a.png)
![soal_5_b_4](https://user-images.githubusercontent.com/91018876/194885928-49d5ceda-1217-4cfa-a865-050d975ef190.png)

c.
```
mean() : fungsi untuk mendapatkan rata-rata.
varian : sd()^2, sd() : fungsi untuk mendapatkan standar deviasi.
set.seed(n) : untuk menghasilkan data random yang konsisten/sama walaupun dipanggil beberapa kali.
```
```R
Code :
set.seed(1)
n = 100
lambda = 3
rata = mean(rexp(n, rate = lambda))
varian = sd(rexp(n, rate = lambda))^2

paste("Rata : ", rata)
paste("Varian : ", varian)
```

Soal 6 
```
Diketahui :
n = 100
mean = 50
sd = 8
```
a.
```
rnorm(n, mean, sd) : menghasilkan bilangan random dengan menggunakan distribusi normal.
n : jumlah yang diobservasi
mean : rata-rata
sd : standar deviasi
```
```R
Code :
z_score = rnorm(n, mean, sd)
plot(z_score, main="Distribusi normal untuk 100 data random")
```
`![soal_6_a](https://user-images.githubusercontent.com/91018876/194887303-3581b49b-894e-42de-9896-1397d84b7d8c.png)

b.
```R
Code :
hist(z_score, breaks = 50, main="5025211079_Andrian_DNhistogram")
```
![soal_6_b](https://user-images.githubusercontent.com/91018876/194887508-077b3e69-0995-4525-8185-7047c61302b3.png)

c.
```R
Code :
varian = sd(z_score)^2
paste("Varian : ", varian)
```
