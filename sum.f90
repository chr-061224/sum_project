! 程式名稱：sum_1_to_n，功能是計算 1 + 2 + ... + N
program sum_1_to_n
  ! 關掉隱式宣告，所有變數都必須明確宣告型別
  implicit none
  ! n：使用者輸入的上限；i：迴圈計數器
  integer :: n, i
  ! total：累加的結果，用 8 位元組整數避免 N 很大時溢位
  integer(kind=8) :: total
  ! 在螢幕上提示使用者輸入 N
  write(*,*) 'Please input N:'
  ! 從鍵盤讀入 N 的值
  read(*,*) n
  ! 累加之前先把總和歸零
  total = 0
  ! 迴圈：i 從 1 跑到 n
  do i = 1, n
     ! 每一圈把 i 加進總和
     total = total + i
  ! 迴圈結束
  end do
  ! 把 N 和計算結果印到螢幕上
  write(*,*) '1 + 2 + ... + ', n, ' = ', total
! 程式結束
end program sum_1_to_n
