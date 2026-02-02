rep <- 500
mu <- 1
sigma <- 1/2
n <- 10
Tn <- numeric(rep)
Int <- numeric(rep)
#prueba = numeric(rep)
for(i in 1:rep){
X <- rnorm(n,mu,sigma)
sn <- sd(X) #standard deviation (desviación típica = sqrt(varianza))
x.barra <- mean(X)
# prueba[i]= x.barra
Tn[i] <- sqrt(n) * (x.barra - mu) / sn
Int[i] <- quantile(X,probs = 0.05)
}
#hist(Int, freq = FALSE, breaks = 40, xlim = c(-3.5, 3.5), main = "")
hist(Int, freq = FALSE, breaks = 40, main = "")
x <- seq(-3.5,3.5,length = 300)
lines(dt(x, n - 1) ~ x, col = "blue")

print(mean(prueba))

# Querríamos ver si mu es igual o distinto de 1
# Ver que el estadístico sigue una tn-1 (a través del histograma).
# La aproximación del histograma a la curva es mejor cuantos más
# repeticiones y breaks
# nºcajas = sqrt(n), si n <= 100
# nº cajas = 1 + 3,3log(n) si n > 100