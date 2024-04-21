// Um exemplo básico que utiliza o método de diferenças finitas para resolver a equação de Schrödinger

#include <stdio.h>
#include <math.h>

#define N 1000 // Número de pontos de grade
#define L 1.0 // Comprimento da caixa
#define  hbar 1.0 // Constante de Planck reduzida
#define m 1.0 // Massa da partícula

double psi[N];

void solve_schrodinger_equation(double energy) {
	double dx = L / ( N - 1);
	double hbar_sq_by_2m = hbar * hbar / (2 * m * dx * dx);
	
	// Condições iniciais
	psi[0] = 0.0;
	psi[N - 1] = 0.0;
	
	// Aplicação do método de diferença finitas
	for (int i = 1; i < N - 1; i++) {
		psi[i] = (2.0 * psi[i-1] - psi[i - 2] - 2.0 * hbar_sq_by_2m * energy * psi[i - 1]) /  (1.0 - hbar_sq_by_2m *  energy);
		
	}
}

int main() {
	double energy_guess = 1.0; // Suposição inicial para a energia
	double energy_tolerance = 1e-6; // Tolerância de convergência
	double energy = energy_guess;
	
	while (1) {
		solve_schrodinger_equation(energy);
		
		// Verificando a convergência
		if (fabs(psi[N/2]) < 1e-6) {
			printf("Energia do estado fundamental: %lf\n", energy);
			break;
		}
	}
	
	return 0;
}