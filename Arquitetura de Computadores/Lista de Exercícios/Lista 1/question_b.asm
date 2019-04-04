# Problema (Imprima o valor de [e])
# int a = 10;
# int b = 25;
# int c = 7;
# char d = ‘a’;
# if ( a<b && c!=0 && d == ‘a’ ) e = 1;
# Saída: 1 

.data
	a: .word 10
	b: .word 25
	c: .word 7
	d: .word 'a'
	e: .word 0
.text				
	lw $t1, a
	lw $t2, b
	lw $t3, c
	lw $t4, d
	lw $t5, e
	
	blt $t1, $t2, a_is_less_than_b			# [a]<[b], se verdade vai para [a_is_less_than_b]
	j print_e					# Print [e]
	
	a_is_less_than_b:
		bne $t3, 0, a_different_from_b		# [c!=0], se verdade vai para [a_different_from_b]
		j print_e				# Print [e]
		
		a_different_from_b:
			beq $t4, 'a', assign_value_to_e	# [d == ‘a’], se verdade vai para [assign_value_to_e]
			j print_e			# Print [e]
			
				assign_value_to_e:
					li $t5, 1	# [e] = 1
	
	print_e:
		# Print [e]
		li  $v0, 1
		move $a0, $t5
    		syscall
    	
    		# Exit Program
    		li $v0, 10
    		syscall