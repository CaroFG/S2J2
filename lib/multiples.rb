def is_multiple_of_3_or_5?(current_number)
	if  (current_number % 3 == 0) || (current_number % 5 ==0)
		return true 
	else
		return false
	end
end





def sum_of_3_or_5_multiples(final_number)
	final_sum = 0 
	if final_number.is_a?(Float) || final_number.is_a?(String) || final_number < 0
		return "Yo ! Je ne prends que les entiers naturels. TG"
	elsif final_number.is_a?(Integer)
		
  	#cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro
		
		
 	 current_number = 0
 	 while current_number < final_number

  		# Ici, lance une boucle qui va de zéro au chiffre "final_number" EXCLU (car on est sur du strictement inférieur)
  		# cette boucle indente à chaque tour une variable (par exemple "current_number") qui vaudra 0 puis 1 puis 2 ... etc.

  		if is_multiple_of_3_or_5?(current_number) 
  		final_sum += current_number
      # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
      # si la réponse est "false"…ben y a pas de else : ce "current_number" n'est pas multiple,
      # donc on passe au suivant en oubliant celui-là. On repart dans la boucle.
    	end
	current_number += 1
  #Ici, positionne la fin de la boucle
		end
  	#on retourne la variable qui contient la somme du tout
	return final_sum 
end
end



