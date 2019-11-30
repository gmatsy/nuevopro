function buscarUsuario() {

    var nombre = document.getElementById("txtBuscarNombre").value;
    var nombre1 = $("#txtBuscarNombre").val();
    
    $.ajax({
        url: "buscarcontroller.do",
        type: 'POST',
        data: {
            txtNombre: nombre
        },
        success: function (result) {
            console.log(result)
            $("#registros").html(result);
        }
    });


}