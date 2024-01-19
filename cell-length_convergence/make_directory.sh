for i in `seq -w 5 0.5 20`
        do      
		mkdir $i
		cp INCAR POTCAR KPOINTS $i
                cd $i
#               ln -sf ../INCAR
#               ln -sf ../KPOINTS
#               ln -sf ../POTCAR
                cat >POSCAR <<!
Y
 1
 $i  0.0 0.0
 0.0  $i 0.0
 0.0 0.0 $i
 Y
 1
Direct
 0.5  0.5  0.5               
!
                
               # mpirun -np 12 vasp_std > vasp.out
                cd ..
        done

#echo Finished at `date`

exit

