# 
# Ejemplos de contrastes de hipótesis
# Ejecuta cada uno de los 5 ejemplos
# Identifica qué contraste realiza
# Aporta información en tu documento de Quarto para cada uno de ellos sobre
# 1. Modelo que considera
# 2. Contraste y estadístico
# 3. Cómo se determina la conclusión

# One-Sample t-test
# Is the mean of the sample equal to 10?
data <- c(12, 9, 13, 11, 10, 9, 10, 8, 12, 11)
cat("One-Sample t-test:\n")
print(t.test(data, mu = 10))
cat("\n")

# Two-Sample t-test
# Do treatment and control groups have the same mean?
group1 <- c(14, 15, 13, 14, 15, 16)
group2 <- c(10, 11, 9, 11, 10, 12)
cat("Two-Sample t-test:\n")
print(t.test(group1, group2, var.equal = TRUE))
cat("\n")

# Paired t-test
# Is there a difference in scores before and after treatment?
before <- c(200, 210, 190, 230, 215)
after <- c(205, 215, 195, 225, 220)
# hay que cambiar un poco los datos porque va a salir 0 (ya los he cambiado)
# (xi,yi) zi = yi - xi --> mu_z = 0
# (X-mu0)/(S/sqrt(n))
cat("Paired t-test:\n")
print(t.test(before, after, paired = TRUE))
cat("\n")


# One-Sample Proportion Test
# Is the proportion of successes equal to 0.5?
cat("One-Sample Proportion Test:\n")
print(prop.test(30, 50, p = 0.5))
cat("\n")

# Two-Sample Proportion Test
# Compare proportions between two groups
cat("Two-Sample Proportion Test:\n")
print(prop.test(c(30, 35), c(50, 60)))
cat("\n")
