! (UFRGS 1998) Supondo que a meia-vida de um isótopo radioativo seja um dia, após 48 horas
! a quantidade restante deste isótopo será

! (A) 1/2 da quantidade inicial.
! (B) 1/4 da quantidade inicial.
! (C) 1/24 da quantidade inicial.
! (D)1/48 da quantidade inicial.
! (E) zero.

program RadioactiveDecay
    implicit none
    real :: half_life, initial_amount, remainig_amount
    integer :: time_elapsed_hours

    ! Definindo a meia-vida do isótopo radioativo (em dias)
    half_life = 1.0

    ! Definindo a quantidade inicial do isótopo radioativo
    initial_amount =1.0

    ! Defininod o tempo decorrido em horas
    time_elapsed_hours = 48

    ! Calculando a quantidade restante após 48 horas
    remainig_amount = initial_amount * 0.5**(time_elapsed_hours / 24.0)

    ! Imprimindo a quantidade restante
    print *, 'Após 48 horas, a quantidade restante do isótopo é: ', remainig_amount

end program RadioactiveDecay