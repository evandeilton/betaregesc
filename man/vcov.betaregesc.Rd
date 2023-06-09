% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/betaroticore.R
\name{vcov.betaregesc}
\alias{vcov.betaregesc}
\title{Matriz de covariância}
\usage{
\method{vcov}{betaregesc}(object, ...)
}
\arguments{
\item{object}{Um objeto das classes 'betaregesc' ou 'betaregescdv'.}

\item{...}{Outros parametros}
}
\description{
Esta função retorna a matriz de covariância para objetos das classes 'betaregesc' e 'betaregescdv'.
}
\examples{
\dontrun{
# Exemplo de uso da função hessian
# Primeiro, gere um objeto de classe 'betaregesc' ou 'betaregescdv'
set.seed(42)
n <- 100
dados <- data.frame(
  x1 = rnorm(n, mean = 1, sd = 0.5),
  x2 = rbinom(n, size = 1, prob = 0.5),
  x3 = rnorm(n, mean = 2, sd = 1))
betas <- c(0.2, 0.3, -0.4, 0.1)
formula <- ~x1 + x2 + x3
phi <- 50
dados_simulados <- betaregesc_simula_dados(
  formula = formula,
  dados = dados,
  betas = betas,
  phi = phi,
  link = "logit",
  ncuts = 100)
fit <- beta_ordinal_fit(
 formula = formula,
 dados = dados_simulados,
 link = "probit",
 num_hessiana = TRUE)
vcov(fit)
}
}
