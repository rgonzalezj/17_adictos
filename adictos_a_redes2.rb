=begin
Se pide crear el programa adictos_a_redes2.rb con un método llamado scan_addicts2 que
reciba un arreglo con los minutos de uso y como resultado entregue un nuevo arreglo cambiando
todas las medidas inferiores a 90 minutos como 'bien', entre 90 y 180 como 'mejorable' y todas las
mayores o iguales a 180 como 'mal'.
    
=end

def scan_addicts2(scan)
    adicts = scan.size
    resultados_scan = []
    adicts.times do |i|
        if scan[i] >= 180
            resultados_scan << 'mal'
        elsif scan[i] >= 90
            resultados_scan.push 'mejorable'
        else
            resultados_scan << 'bien'
        end
    end
    resultados_scan
end
puts scan_addicts2([90, 89, 91, 180, 179, 181, 300, 550, 29, 1])  #condición de borde de 90+- y 180+-