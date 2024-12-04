package main

import (
	"fmt"
	"math"
)

// Função para calcular PI usando o método de Gauss-Legendre
func calcularPIGaussLegendre(iteracoes int) float64 {
	a := 1.0
	b := 1.0 / math.Sqrt(2)
	t := 0.25
	p := 1.0

	for i := 0; i < iteracoes; i++ {
		aNext := (a + b) / 2
		b = math.Sqrt(a * b)
		t -= p * (a - aNext) * (a - aNext)
		p *= 2

		a = aNext
	}

	// Fórmula final para calcular pi
	return (a + b) * (a + b) / (4 * t)
}

func main() {
	iteracoes := 5 // Defina o número de iterações desejadas
	piAproximado := calcularPIGaussLegendre(iteracoes)

	fmt.Printf("PI calculado com %d iterações: %.15f\n", iteracoes, piAproximado)
}
