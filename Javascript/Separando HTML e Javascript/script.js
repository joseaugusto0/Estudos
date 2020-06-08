var dv1;
window.addEventListener("load",inicia);

function inicia(){
    dv1 = document.getElementById("dv1");
    dv1.addEventListener("mouseover",trocaCima);
    dv1.addEventListener("mouseout",trocaOriginal);
}

function trocaCima(){
    var obj = event.target;
    obj.style.backgroundImage="url('cursor2.png')"
}

function trocaOriginal(){
    var obj = event.target;
    obj.style.backgroundImage="url('cursor.png')"
}