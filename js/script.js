// Exbir resultado da pesquisa
const pesquisa = document.querySelector('#resultado_pesquisa')


async function resultado_pesquisa (){
    const retorno = await fetch('http://localhost:3030');
    const query = await retorno.json();
    console.log(query);
    exibe_dados(query);
}


function    exibe_dados (dados){
    dados.forEach(funcionario => {
        const dadosHtml = `<div>
        <h3>${funcionario.NomeCriatura} ${funcionario.minicial} ${funcionario.unome}</h3> 
        <p> 
            cpf: <strong>${funcionario.cpf}</strong>
            Salario: <strong>${funcionario.salario}</strong>
        </p>  
        </div>
        `
        pesquisa.innerHTML = pesquisa.innerHTML + dadosHtml;
    });
};

resultado_pesquisa();
