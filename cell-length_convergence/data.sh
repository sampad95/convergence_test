for i in `seq -w 5 0.5 20`
        do     
#	  E=`awk ' /F=/{print $3}' $i/OSZICAR` ;
	  E=`awk '/energy  without entropy= /{print $7}' $i/OUTCAR` ;
	  echo $i $E  >> lcvsE.dat    
   	  
               
        done


exit

