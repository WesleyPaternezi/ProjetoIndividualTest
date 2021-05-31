function change_inicio() {
    var inicio = Number(sel_inicio.value)
    if(inicio >= 1){
        div_municipio.style.display = "block";
    }
}
function change_municipio() {
    var inicio = Number(sel_inicio.value)
    if(inicio >= 1){
        div_destino.style.display = "block";
    }
}
function change_destino() {
    div_valor.innerHTML = ``
    var municipio = sel_municipio.value
    var destino = sel_destino.value

    if (municipio == 1 && destino == 1) {// 1(Centro de Sâo Paulo) até 1(Centro de Sâo Paulo)
        div_valor.innerHTML = `<h1>Sua corrida sairá Aproximadamente R$20 à R$250 <br>
        Percorrerá em torno de 5 à 60 minutos
        Aproximadamente 5km à 40km </h1>`
    } else if (municipio == 1 && destino == 2) {// 1(Centro de Sâo Paulo) até 2(Centro de São Caetano do Sul)
        div_valor.innerHTML = `<h1>Sua corrida sairá Aproximadamente R$60 à R$150 <br>
        Percorrerá em torno de 20 à 40 minutos
        Aproximadamente 15km à 20km </h1>`
    } else if (municipio == 1 && destino == 3) {// 1(Centro de Sâo Paulo) até 3(Centro De Santo André)
        div_valor.innerHTML = `<h1>Sua corrida sairá Aproximadamente R$45 à R$90 <br>
        Percorrerá em torno de 30 à 40 minutos
        Aproximadamente 20km à 40km </h1>`
    } else if (municipio == 1 && destino == 4) {// 1(Centro de Sâo Paulo) até 4(Centro De São Bernardo)
        div_valor.innerHTML = `<h1>Sua corrida sairá Aproximadamente R$80 à R$200 <br>
        Percorrerá em torno de 40 à 50 minutos
        Aproximadamente 25km à 45km </h1>`
    }

    if (municipio == 2 && destino == 1) {// 2(ABC) até 1(Centro de Sâo Paulo)
        div_valor.innerHTML = `<h1>Sua corrida sairá Aproximadamente R$80 à R$250 <br>
        Percorrerá em torno de 40 à 50 minutos
        Aproximadamente 25km à 45km </h1>`
    } else if (municipio == 2 && destino == 2) {// 2(ABC) até 2(Centro de São Caetano do Sul)
        div_valor.innerHTML = `<h1>Sua corrida sairá Aproximadamente R$20 à R$30 <br>
        Percorrerá em torno de 5 à 10 minutos
        Aproximadamente 5km à 10km </h1>`
    } else if (municipio == 2 && destino == 3) {// 2(ABC) até 3(Centro De Santo André)
        div_valor.innerHTML = `<h1>Sua corrida sairá Aproximadamente R$60 à R$150 <br>
        Percorrerá em torno de 30 à 40 minutos
        Aproximadamente 5km à 45km </h1>`
    } else if (municipio == 2 && destino == 4) {// 2(ABC) até 4(Centro De São Bernardo)
        div_valor.innerHTML = `<h1>Sua corrida sairá Aproximadamente R$65 à R$120 <br>
        Percorrerá em torno de 40 à 50 minutos
        Aproximadamente 5km à 45km </h1>`
    }
    
    
}