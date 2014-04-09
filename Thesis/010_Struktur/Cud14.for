      program CuD14
C *********************************************************************
C
C   Phasengleichgewichtsberechnungen für VLE
C   mit einer Zustandsgleichung  getestet mit RKS
C
C *********************************************************************
C  ***  ACHTUNG  ***
C***********************************************************************
      IMPLICIT NONE
C
      INTEGER
     &     dnij, eosno, eos3ty, FGaij , FGAlf, FGalf1 , FGbij , FGEOS ,
     &     FGERR , Fgkij , FGGem , FGopt , FGV ,
C
      DOUBLE PRECISION
     &   Tmin , Tmax , Tmean , Tabs , Tqua, Tstd , sTqua ,
     &   zmin , zmax , zmean , zabs , zqua, zstd , szqua ,
C
      CHARACTER *15  form , name
      CHARACTER *30
     &       ConFil , path , logFil , FDatFil ,
     &       OFil  , FoFil ,
     &        pfil ,  ufil ,  yFil ,
     &       Fpfil , Fufil , Fyfil ,
     &       FkijFil

      COMMON /pProp/   Tc , pc , molmas , aL , cS , cMC , omega ,
     &                 cp0K
C-----------------------------------------------------------------------
C
C-- Schreiben der Parameter in Ausgabedatei
       
      IF (1 .eq. 2) THEN 
 
           CALL  Wstat(uo , '(p_exp - p)' ,
     &           zmin , zmax , zmean , zabs , zqua, zstd , szqua , ko )
      ENDIF
C***********************************************************************
      END
