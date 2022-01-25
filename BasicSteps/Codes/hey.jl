numero = 99

fronteira_maxima = 100
fronteira_minima = 1

fronteira_mediana = (fronteira_maxima + fronteira_minima) ÷ 2

while fronteira_mediana != numero

    if numero > fronteira_mediana
      fronteira_minima = fronteira_mediana

    else
      fronteira_maxima = fronteira_mediana
    end
    println("fronteira_mediana =",fronteira_mediana)
    println("fronteira_maxima =",fronteira_maxima)
    println("fronteira_minima =",fronteira_minima)

    fronteira_mediana = (fronteira_maxima + fronte
