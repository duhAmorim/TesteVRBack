    def removerTextos(frase, marcadores)
        texto = frase.dup # Criando uma cópia da frase para não modificar a original
        marcadores = marcadores.delete('[]').delete("''").split(',') # Remove os colchetes e divide a string em uma array de caracteres
        marcadores.each do |marcador|
          index = texto.index(marcador)
          texto = texto[0...index] if index # Se encontrou o marcador, corta o texto até ele
        end
        return texto.rstrip
    end

   