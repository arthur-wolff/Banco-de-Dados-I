// Exbir resultado da pesquisa
const pesquisa = document.querySelector('#resultado_pesquisa')


async function resultado_pesquisa (){
    const retorno = await fetch('http://localhost:3030');
    const query = await retorno.json();
    console.log(query);
    exibe_dados(query);
}


function    exibe_dados (criaturas){
    criaturas.forEach(criatura => {
        const criaturaHtml = 
        `
        <h3 class="nome_criatura">${criatura.NomeCriatura}</h2>
        <div class="tipo_tam_ten">
            <p>${criatura.Tipo} ${criatura.Tamanho}, ${criatura.Tendencia}</p>
        </div>
        <div class="linha"> </div>
        <div class="status">
            CA: ${criatura.CA}<br> PV: ${criatura.PV}<br> Deslocamento: ${criatura.Deslocamento}
        </div>
        <div class="habilidades">
            <p>Força:<br>${criatura.Força}</p>
            <p>Destreza:<br>${criatura.Destreza}</p>
            <p>Constituição:<br>${criatura.Constituição}</p>
            <p>Inteligencia:<br>${criatura.Inteligencia}</p>
            <p>Sabedoria:<br>${criatura.Sabedoria}</p>
            <p>Carisma:<br>${criatura.Carisma}</p>
        </div>
        <div class="caracteristicas">
            <p>Pericias: ${criatura.Pericias}<br>Sentidos: ${criatura.Sentidos}<br>Idiomas: ${criatura.Idiomas}<br>Nivel de Desafio: ${criatura.NivelDesafio}</p>
        </div>
        `
        pesquisa.innerHTML = pesquisa.innerHTML + criaturaHtml;
    });
};

resultado_pesquisa();
