[Trash Info]
Path=System%20Volume%20Information
DeletionDate=2023-11-04T21:52:31
                                                                                                                                                                                                                                                                                                                                                                                                                                               e :
		echo "\n\t\tADDRESS DATABASE"
		echo "............................................................."
		echo "\nName\t\tCity\t\tZipcode\t\tMobile"
		echo "............................................................."
		
		cat $fname
		echo "............................................................."
	;;	


	3) 	#Insert : 
		
		echo "\nEnter Name :- "
		read name

		echo "\nEnter City :- "
		read city
		

		while [ $code -lt 0 ]
		do 
			echo "\nEnter pcode :- "
			read code
		done

		while [ $phn -lt 0 ]
		do 
			echo "\nEnter Mobile :- "
			read phn
		done

		
		echo "\n$name\t\t$city\t\t$code\t\t$phn"
		echo "\n$name\t\t$city\t\t$code\t\t$phn" >> $fname
		echo "\n Your data is stored in the file."
		
		$n=`expr $n + 1`
		code=-1
		phn=-1
		
	;;


	4)	#Delete :
		touch temp
		echo "\nEnter the Name of the  record to be deleted :- "
		read no

		if grep -w "$no" $fname 
		then
			grep -w -v "$no" $fname >> temp
			rm $fname
			mv temp $fname
		else 
			echo "\nRecord not found....!"
		fi
	;;

	

	5)	#Searching a record :
		echo "\nEnter the Name of the record to be displayed :- "
		read no

		if grep  -w "$no" $fname
		then
			grep -w -v "$no" $fname >> temp
		else 
			echo "\nRecord not found....!"
		fi
	;;

	6)  #Modify A Record:
		touch temp
		echo "\nEnter the Name of the student whose record is to be modified :- "
		read name

		
		if grep -w "$name" $fname 
		then
		grep -w -v "$name" $fname >> temp
		echo "\nEnter Name :- "
		read name


		echo "\nEnter City :- "
		read city
		

		while [ $code -lt 0 ]
		do 
			echo "\nEnter Zipcode :- "
			read code
		done

		while [ $phn -lt 0 ]
		do 
			echo "\nEnter Mobile :- "
			read phn
		done
	
		
		echo "\n$name\t\t$city\t\t$code\t\t$phn" >>temp
			
		echo "\n Your data is stored in the file."

		code=-1
		phn=-1
		fi

		rm $fname
		mv temp $fname
	;;

	7)	#Exit..
		echo "\n Exitting from Program...."
	;;
	esac
done
