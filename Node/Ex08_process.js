function temParam(param) {
    return process.argv.indexOf(param) !== -1;
}

if (temParam("--producao")) {
    console.log("atenção total");
} else {
    console.log("tranquilo");
}
/* console.log(process.argv); */
