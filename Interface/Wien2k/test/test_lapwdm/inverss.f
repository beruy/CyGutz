      SUBROUTINE INVERSSYMDEF(A,AINV)
      IMPLICIT REAL*8 (A-H,O-Z)
      DIMENSION A(3,3),AINV(3,3)
        det= a(1,1)*a(2,2)*a(3,3)+a(1,2)*a(2,3)*a(3,1) &
            +a(1,3)*a(2,1)*a(3,2)-a(3,1)*a(2,2)*a(1,3) &
            -a(1,1)*a(3,2)*a(2,3)-a(2,1)*a(1,2)*a(3,3)
      AINV(1,1) =(   A(2,2) * A(3,3) - A(2,3) * A(3,2) ) / det
      AINV(2,1) =( - A(2,1) * A(3,3) + A(2,3) * A(3,1) ) / det
      AINV(3,1) =(   A(2,1) * A(3,2) - A(2,2) * A(3,1) ) / det
      AINV(1,2) =( - A(1,2) * A(3,3) + A(1,3) * A(3,2) ) / det
      AINV(2,2) =(   A(1,1) * A(3,3) - A(1,3) * A(3,1) ) / det
      AINV(3,2) =( - A(1,1) * A(3,2) + A(1,2) * A(3,1) ) / det
      AINV(1,3) =(   A(1,2) * A(2,3) - A(1,3) * A(2,2) ) / det
      AINV(2,3) =( - A(1,1) * A(2,3) + A(1,3) * A(2,1) ) / det
      AINV(3,3) =(   A(1,1) * A(2,2) - A(1,2) * A(2,1) ) / det
      RETURN
      END

