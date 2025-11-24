class Linea {
    const property numeroDeTelefono;
    const property packs = [];
    const property consumos = [];

    method promedioConsumos(fechaInicio, fechaFinal) = (consumos.filter({c => c.fechaDeVencimiento().between(fechaInicio, fechaFinal)})).sum() / consumos.filter({c => c.fechaDeVencimiento().between(fechaInicio, fechaFinal)}).size()
}

class ConsumoDeInternet {
    const property precioMB; 

    method costo(mbGastados) = precioMB * mbGastados
}

class ConsumoDeLlamadas {
    const property precioExtraLlamada; 
    const property precioInicialLlamada;

    method costo(segundosLlamada) {
        if(segundosLlamada > 30){
            return precioInicialLlamada + (segundosLlamada - 30) * precioExtraLlamada;
        } else {return precioInicialLlamada}
    } 
}

class Pack {
    const property fechaDeVencimiento = new Date();

    method fechaDeVencimiento() = fechaDeVencimiento;
}
