function mostrar=Cadena_4char(x)

         op_str = num2str(x);
         
         longitud_cadena = length(op_str);
         
             switch longitud_cadena
                 case 1
                         mostrar = strcat('000',op_str);
                 case 2
                     if op_str(1)=='-'
                         mostrar = strcat(op_str(1),'00',op_str(2));
                     else    
                         mostrar = strcat('00',op_str);
                     end
                 case 3
                     if op_str(1)=='-'
                         mostrar = strcat(op_str(1),'0',op_str(2),op_str(3));
                     else    
                         mostrar = strcat('0',op_str);
                     end
                
                 otherwise
                     mostrar = num2str(op_str);
             end  