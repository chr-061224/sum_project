program sum_1_to_n
  implicit none
  integer :: n, i
  integer(kind=8) :: total
  write(*,*) 'Please input N:'
  read(*,*) n
  total = 0
  do i = 1, n
     total = total + i
  end do
  write(*,*) '1 + 2 + ... + ', n, ' = ', total
end program sum_1_to_n
