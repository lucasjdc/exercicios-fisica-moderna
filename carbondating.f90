
! (UFRGS 2017) Os seres, quando vivos, possuem aproximadamente a mesma fração de carbono-14 (   ), isótopo radioativo do carbono,
! que a atmosfera. Essa fração, que é de 10 ppb (isto é, 10 átomos de     para cada bilhão de átomos de C), decai 
! com meia-vida de 5.730 anos, a partir do instante em que o organismo morre. Assim, o     pode ser usado para se 
! estimar o tempo decorrido desde a morte do organismo. Aplicando essa técnica a um objeto de madeira achado em um
! sítio arqueológico, a concentração de     nele encontrada foi de 0,625 ppb. Esse valor indica que a idade aproximada
! do objeto é, em anos, de

! (A) 1.432.
! (B) 3.581.
! (C) 9.168.
! (D) 15.280.
! (E) 22.920.

program CarbonDating
    implicit none
    real :: initial_concentration, final_concentration, half_life, time_elapsed
    ! Definido as constantes do problema
    initial_concentration = 10.0 ! Concentração inicial em ppb
    final_concentration = 0.625  ! Concentração final em ppb
    half_life = 5730.0           ! Meia-vida  do carbono-14 em anos

    ! Calculando o tempo decorrido desde a morte do organismo
    time_elapsed = half_life * log(final_concentration/initial_concentration) / log(0.5)

    ! Imprimindo o resultado
    print *, 'A idade aproximada do objeto é de ', time_elapsed, ' anos.'

end program CarbonDating
