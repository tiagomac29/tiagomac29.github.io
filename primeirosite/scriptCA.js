function verificando(){
    limpar()
    var enviar = true
    var nome = document.getElementById("txtnome").value
    if(nome.length == 0){
        enviar = false
        document.querySelector("#erronome").textContent = "faltou preencher o NOME!!!"
        document.getElementById("txtnome").style.backgroundColor = "orange"
        }
        
        var gmail = document.getElementById("txtgmail").value
        if(gmail.indexOf("@")< 0 || gmail.length == 0){
        enviar = false
        document.querySelector("#errogmail").textContent = "faltou preencher o GMAIL!!!(ou colocar o @)"
        document.getElementById("txtgmail").style.backgroundColor = "orange"
       }
       
        var numero = document.getElementById("txtcelular").value
        if(isNaN(numero) || numero.length == 0){
        enviar = false
        document.querySelector("#errocelular").textContent = "faltou preencher o NUMERO DO CELULAR!!!"
        document.getElementById("txtcelular").style.backgroundColor = "orange"
        
        
        }
   

    if(enviar){
        document.formain.submit()
    } 
}
    
function limpar(){
    document.querySelector("#txtnome").style.backgroundColor = "white"
    document.querySelector("#txtgmail").style.backgroundColor = "white"
    document.querySelector("#txtcelular").style.backgroundColor = "white"
    document.getElementById("erronome").textContent = ""
    document.getElementById("errogmail").textContent = ""
    document.getElementById("errocelular").textContent = ""
}
