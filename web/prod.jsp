
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cmeta.jspf" %>
        <%@include file="WEB-INF/jspf/cstyles.jspf" %>
        <script src="jquery-3.2.1.min.js"></script>
        <script src="alertifyjs/alertify.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/styles.css">
    <link rel="stylesheet" type="text/css" href="assets/css/demo.css">
    
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="WEB-INF/jspf/cheader.jspf" %>
            <%@include file="WEB-INF/jspf/cnav.jspf" %>
<aside>
    <div class="nom">
        <div class="col-lg-12">
            <div class="titulo">
                Nuestros productos
                   <div class="sub">
                <small>son los mejores del mundo</small>
        </div>
            </div>
                <span onclick="dol()" id="curr_usd" class="curr_symbolu ">USD</span>
                <span onclick="eu()" id="curr_eur" class="curr_symbole">EUR</span>
                <span onclick="pen()" id="curr_pen" class="curr_symbolpe">PEN</span> 
    </div>
        <div class="row">
           <!-- primero-->
        <div class="col-lg-3" >
            <div id="1" class="card" style="width: 20rem;height:33.5rem;  background-color:gray; ">
                <img src="RESOURCES/imgs/fl/flstudio_fruity-1.jpg" class="card-img-top" >
  <div class="card-body">
      <h5 class="card-title" style="color:#fff;">Fruty Edition</h5>
    <p class="card-text"style="color:#fff;">No audio clips. No audio recording.<br>Limited playlist features.<br>FLEX included</p>
   <div class="price-radio">
       <input type="radio" name="fl_price" value="899" onclick="encender()">
<span class="img-price" onclick="clickDescriptionPr(607, 0)" style="color:#ffff;"id="1.5">$99.00</span></div>
    

    <button type="button" id="btn-one" class="btn btn-primary" href="#" onclick="click1()" type="button" data-toggle="modal" data-target="#exampleModal">Comprar</button>
    
    <!-- Button trigger modal -->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width: 40rem;display:block;margin:auto">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Validacion de Datos</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div class="modal-body">
         <div class="container-fluid">

        <div class="creditCardForm">
            <div class="heading">
                <h1>Confirmar Datos</h1>
            </div>
            <div class="payment">
                <form>
                    <div class="form-group owner">
                        <label for="owner">Nombre y Apellidos</label>
                        <input type="text" class="form-control" id="owner">
                    </div>
                    <div class="form-group CVV">
                        <label for="cvv">CVV</label>
                        <input type="text" class="form-control" id="cvv">
                    </div>
                    <div class="form-group" id="card-number-field">
                        <label for="cardNumber">Numero de tarjeta</label>
                        <input type="text" class="form-control" id="cardNumber">
                    </div>
                    <div class="form-group" id="expiration-date">
                        <label>Fecha de vencimiento</label>
                        <select>
                            <option value="01">Febrero</option>
                            <option value="02">Enero</option>
                            <option value="03">Marzo</option>
                            <option value="04">Abril</option>
                            <option value="05">Mayo</option>
                            <option value="06">Junio</option>
                            <option value="07">Julio</option>
                            <option value="08">Agostot</option>
                            <option value="09">Setiembre</option>
                            <option value="10">Octubre</option>
                            <option value="11">Noviembre</option>
                            <option value="12">Diciembre</option>
                        </select>
                        <select>
                            <option value="16"> 2016</option>
                            <option value="17"> 2017</option>
                            <option value="18"> 2018</option>
                            <option value="19"> 2019</option>
                            <option value="20"> 2020</option>
                            <option value="21"> 2021</option>
                        </select>
                    </div>
                    <div class="form-group" id="credit_cards">
                        <img src="assets/images/visa.jpg" id="visa">
                        <img src="assets/images/mastercard.jpg" id="mastercard">
                        <img src="assets/images/amex.jpg" id="amex">
                    </div>
                    <div class="form-group" id="pay-now">
                        <a href="https://support.image-line.com/redirect/flstudio20_win_installer?_ga=2.244289414.2048963962.1572809035-615853735.1545323444" class="btn btn-default">Confirmar</a>
                         <a class="btn btn-primary" type="button" class="btn btn-primary" id="cerrar" data-dismiss="modal" style="color: white;    ">Cancelar</a>
                    </div>
                </form>
            </div>
        </div>

        <p class="examples-note" style="color: #fff;">Tus Datos no seran Revelados:</p>

        <div class="examples">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Type</th>
                            <th>Card Number</th>
                            <th>Security Code</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Visa</td>
                            <td>4716108999716531</td>
                            <td>257</td>
                        </tr>
                        <tr>
                            <td>Master Card</td>
                            <td>5281037048916168</td>
                            <td>043</td>
                        </tr>
                        <tr>
                            <td>American Express</td>
                            <td>342498818630298</td>
                            <td>3156</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
   
      </div>

         
    
    </div>
  </div>
</div>
  </div>
</div>      
        </div>
           
           <!-- segundo-->
                <div class="col-lg-3">
            <div id="2" class="card" style="width: 20rem; height:33.5rem; background-color:gray;">
                <img src="RESOURCES/imgs/fl/flstudio_producer.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title"style="color:#fff;">FL Studio Producer Edition</h5>
    <p class="card-text"style="color:#fff;">Includes Audio Recording & full Playlist features.Extra plugins as listed (x9). No VST plugin versions included, registrations work only inside FL Studio.</p>
    <div class="price-radio">
       <input type="radio" name="fl_price" value="899" onclick="encender2()">
<span class="img-price" onclick="clickDescriptionPr(607, 0)" style="color:#ffff;"id="2.5">$199.00</span></div>

   <button type="button" id="btn-two" class="btn btn-primary"href="#" type="button" data-toggle="modal" data-target="#exampleModal">Comprar</button>

    <!-- Button trigger modal -->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width: 40rem;display:block;margin:auto">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Validacion de Datos</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div class="modal-body">
         <div class="container-fluid">

        <div class="creditCardForm">
            <div class="heading">
                <h1>Confirmar Datos</h1>
            </div>
            <div class="payment">
                <form>
                    <div class="form-group owner">
                        <label for="owner">Nombre y Apellidos</label>
                        <input type="text" class="form-control" id="owner">
                    </div>
                    <div class="form-group CVV">
                        <label for="cvv">CVV</label>
                        <input type="text" class="form-control" id="cvv">
                    </div>
                    <div class="form-group" id="card-number-field">
                        <label for="cardNumber">Numero de tarjeta</label>
                        <input type="text" class="form-control" id="cardNumber">
                    </div>
                    <div class="form-group" id="expiration-date">
                        <label>Fecha de vencimiento</label>
                        <select>
                            <option value="01">Febrero</option>
                            <option value="02">Enero</option>
                            <option value="03">Marzo</option>
                            <option value="04">Abril</option>
                            <option value="05">Mayo</option>
                            <option value="06">Junio</option>
                            <option value="07">Julio</option>
                            <option value="08">Agostot</option>
                            <option value="09">Setiembre</option>
                            <option value="10">Octubre</option>
                            <option value="11">Noviembre</option>
                            <option value="12">Diciembre</option>
                        </select>
                        <select>
                            <option value="16"> 2016</option>
                            <option value="17"> 2017</option>
                            <option value="18"> 2018</option>
                            <option value="19"> 2019</option>
                            <option value="20"> 2020</option>
                            <option value="21"> 2021</option>
                        </select>
                    </div>
                    <div class="form-group" id="credit_cards">
                        <img src="assets/images/visa.jpg" id="visa">
                        <img src="assets/images/mastercard.jpg" id="mastercard">
                        <img src="assets/images/amex.jpg" id="amex">
                    </div>
                    <div class="form-group" id="pay-now">
                        <a href="https://support.image-line.com/redirect/flstudio20_win_installer?_ga=2.244289414.2048963962.1572809035-615853735.1545323444" class="btn btn-default">Confirmar</a>
                         <a class="btn btn-primary" type="button" class="btn btn-primary" id="cerrar" data-dismiss="modal" style="color: white;    ">Cancelar</a>
                    </div>
                </form>
            </div>
        </div>

        <p class="examples-note" style="color: #fff;">Tus Datos no seran Revelados:</p>

        <div class="examples">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Type</th>
                            <th>Card Number</th>
                            <th>Security Code</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Visa</td>
                            <td>4716108999716531</td>
                            <td>257</td>
                        </tr>
                        <tr>
                            <td>Master Card</td>
                            <td>5281037048916168</td>
                            <td>043</td>
                        </tr>
                        <tr>
                            <td>American Express</td>
                            <td>342498818630298</td>
                            <td>3156</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
      </div>
    
    </div>
  </div>
</div>
  </div>
</div>    
        </div>
           <!--tercero-->
                <div class="col-lg-3">
            <div id="3" class="card" style="width: 20rem;height:33.5rem; background-color:gray;">
                <img src="RESOURCES/imgs/fl/flstudio_signature.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title"style="color:#fff;">FL Studio Signature Bundle</h5>
    <p class="card-text"style="color:#fff;">Includes Audio Recording & full Playlist features.More plugins unlocked (x16). No VST plugin versions included, registrations work only inside FL Studio.</p>
    <div class="price-radio">
       <input type="radio" name="fl_price" value="899" onclick="encender3()">
       <span class="img-price" onclick="clickDescriptionPr(607, 0)" style="color:#ffff;" id="3.5">$299.00</span></div>
<button type="button" id="btn-tres" class="btn btn-primary"href="#" type="button" data-toggle="modal" data-target="#exampleModal">Comprar</button>

    <!-- Button trigger modal -->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width: 40rem;display:block;margin:auto">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Validacion de Datos</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div class="modal-body">
<div class="container-fluid">

        <div class="creditCardForm">
            <div class="heading">
                <h1>Confirmar Datos</h1>
            </div>
            <div class="payment">
                <form>
                    <div class="form-group owner">
                        <label for="owner">Nombre y Apellidos</label>
                        <input type="text" class="form-control" id="owner">
                    </div>
                    <div class="form-group CVV">
                        <label for="cvv">CVV</label>
                        <input type="text" class="form-control" id="cvv">
                    </div>
                    <div class="form-group" id="card-number-field">
                        <label for="cardNumber">Numero de tarjeta</label>
                        <input type="text" class="form-control" id="cardNumber">
                    </div>
                    <div class="form-group" id="expiration-date">
                        <label>Fecha de vencimiento</label>
                        <select>
                            <option value="01">Febrero</option>
                            <option value="02">Enero</option>
                            <option value="03">Marzo</option>
                            <option value="04">Abril</option>
                            <option value="05">Mayo</option>
                            <option value="06">Junio</option>
                            <option value="07">Julio</option>
                            <option value="08">Agostot</option>
                            <option value="09">Setiembre</option>
                            <option value="10">Octubre</option>
                            <option value="11">Noviembre</option>
                            <option value="12">Diciembre</option>
                        </select>
                        <select>
                            <option value="16"> 2016</option>
                            <option value="17"> 2017</option>
                            <option value="18"> 2018</option>
                            <option value="19"> 2019</option>
                            <option value="20"> 2020</option>
                            <option value="21"> 2021</option>
                        </select>
                    </div>
                    <div class="form-group" id="credit_cards">
                        <img src="assets/images/visa.jpg" id="visa">
                        <img src="assets/images/mastercard.jpg" id="mastercard">
                        <img src="assets/images/amex.jpg" id="amex">
                    </div>
                    <div class="form-group" id="pay-now">
                        <a href="https://support.image-line.com/redirect/flstudio20_win_installer?_ga=2.244289414.2048963962.1572809035-615853735.1545323444" class="btn btn-default">Confirmar</a>
                         <a class="btn btn-primary" type="button" class="btn btn-primary" id="cerrar" data-dismiss="modal" style="color: white;    ">Cancelar</a>
                    </div>
                </form>
            </div>
        </div>

        <p class="examples-note" style="color: #fff;">Tus Datos no seran Revelados:</p>

        <div class="examples">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Type</th>
                            <th>Card Number</th>
                            <th>Security Code</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Visa</td>
                            <td>4716108999716531</td>
                            <td>257</td>
                        </tr>
                        <tr>
                            <td>Master Card</td>
                            <td>5281037048916168</td>
                            <td>043</td>
                        </tr>
                        <tr>
                            <td>American Express</td>
                            <td>342498818630298</td>
                            <td>3156</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
      </div>
 
    </div>
  </div>
</div>
  </div>
</div>    
        </div>
           <!--Cuarto-->
                <div class="col-lg-3">
            <div id="4" class="card" style="width: 20rem;height:33.5rem; background-color:gray;">
                <img src="RESOURCES/imgs/fl/flstudio_flstudio_allpluginbundle.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title"style="color:#fff;">FL Studio PRO</h5>
    <p class="card-text"style="color:#fff;">Includes Audio Recording & full Playlist features.Includes all FL Studio & VST format plugins (as listed).</p>
    <div class="price-radio">
       <input type="radio" name="fl_price" value="899" onclick="encender4()">
<span class="img-price" onclick="clickDescriptionPr(607, 0)" style="color:#ffff;"id="4.5">$899.00</span></div>
<button  type="button" id="btn-cuatro" class="btn btn-primary"href="#" type="button" data-toggle="modal" data-target="#exampleModal">Comprar</button>

    <!-- Button trigger modal -->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width: 40rem;display:block;margin:auto">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Validacion de Datos</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div class="modal-body">
         <div class="container-fluid">

        <div class="creditCardForm">
            <div class="heading">
                <h1>Confirmar Datos</h1>
            </div>
            <div class="payment">
                <form>
                    <div class="form-group owner">
                        <label for="owner">Nombre y Apellidos</label>
                        <input type="text" class="form-control" id="owner">
                    </div>
                    <div class="form-group CVV">
                        <label for="cvv">CVV</label>
                        <input type="text" class="form-control" id="cvv">
                    </div>
                    <div class="form-group" id="card-number-field">
                        <label for="cardNumber">Numero de tarjeta</label>
                        <input type="text" class="form-control" id="cardNumber">
                    </div>
                    <div class="form-group" id="expiration-date">
                        <label>Fecha de vencimiento</label>
                        <select>
                            <option value="01">Febrero</option>
                            <option value="02">Enero</option>
                            <option value="03">Marzo</option>
                            <option value="04">Abril</option>
                            <option value="05">Mayo</option>
                            <option value="06">Junio</option>
                            <option value="07">Julio</option>
                            <option value="08">Agostot</option>
                            <option value="09">Setiembre</option>
                            <option value="10">Octubre</option>
                            <option value="11">Noviembre</option>
                            <option value="12">Diciembre</option>
                        </select>
                        <select>
                            <option value="16"> 2016</option>
                            <option value="17"> 2017</option>
                            <option value="18"> 2018</option>
                            <option value="19"> 2019</option>
                            <option value="20"> 2020</option>
                            <option value="21"> 2021</option>
                        </select>
                    </div>
                    <div class="form-group" id="credit_cards">
                        <img src="assets/images/visa.jpg" id="visa">
                        <img src="assets/images/mastercard.jpg" id="mastercard">
                        <img src="assets/images/amex.jpg" id="amex">
                    </div>
                    <div class="form-group" id="pay-now">
                       <a href="https://support.image-line.com/redirect/flstudio20_win_installer?_ga=2.244289414.2048963962.1572809035-615853735.1545323444" class="btn btn-default">Confirmar</a>
                         <a class="btn btn-primary" type="button" class="btn btn-primary" id="cerrar" data-dismiss="modal" style="color: white;    ">Cancelar</a>
                    </div>
                </form>
            </div>
        </div>

        <p class="examples-note" style="color: #fff;">Tus Datos no seran Revelados:</p>

        <div class="examples">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Type</th>
                            <th>Card Number</th>
                            <th>Security Code</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Visa</td>
                            <td>4716108999716531</td>
                            <td>257</td>
                        </tr>
                        <tr>
                            <td>Master Card</td>
                            <td>5281037048916168</td>
                            <td>043</td>
                        </tr>
                        <tr>
                            <td>American Express</td>
                            <td>342498818630298</td>
                            <td>3156</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
      </div>
      
    </div>
  </div>
</div>
  </div>
</div>    
        </div>
        </div>

</aside> 
                          <div style="background:black">
            <%@include file="WEB-INF/jspf/cfooter.jspf" %>
               </div>
        </div>
     <%@include file="WEB-INF/jspf/cjs.jspf" %>
  
     <script>
    $('#btn-one').click(function() {
  $('#btn-one').html('<span class="spinner-border spinner-border-sm mr-2" role="status" aria-hidden="true"></span>Loading...').addClass('disabled');
});

</script>
     <script>
    $('#btn-two').click(function() {
  $('#btn-two').html('<span class="spinner-border spinner-border-sm mr-2" role="status" aria-hidden="true"></span>Loading...').addClass('disabled');
});
</script>
     <script>
    $('#btn-tres').click(function() {
  $('#btn-tres').html('<span class="spinner-border spinner-border-sm mr-2" role="status" aria-hidden="true"></span>Loading...').addClass('disabled');
});
</script>
     <script>
    $('#btn-cuatro').click(function() {
  $('#btn-cuatro').html('<span class="spinner-border spinner-border-sm mr-2" role="status" aria-hidden="true"></span>Loading...').addClass('disabled');
});
</script>
<script>
   $('[data-toggle=modal]').on('click', function (e) {
      var $target = $($(this).data('target'));
      $target.data('triggered',true);
      setTimeout(function() {
            if ($target.data('triggered')) {
                 $target.modal('show')
                 .data('triggered',false); //
            };
      }, 2000); // milliseconds
      return false;
}); 
</script>
     <script>
    $('#cerrar').click(function() {
  $('#btn-one').html('<button type="button" id="btn-one" class="btn btn-primary"href="#" type="button" data-toggle="modal" data-target="#exampleModal">Comprar</button>').addClass('disabled');
});
</script>
     <script>
    $('#cerrar').click(function() {
  $('#btn-two').html('<button type="button" id="btn-two" class="btn btn-primary"href="#" type="button" data-toggle="modal" data-target="#exampleModal">Comprar</button>').addClass('disabled');
});
</script>
     <script>
    $('#cerrar').click(function() {
  $('#btn-tres').html('<button type="button" id="btn-tres" class="btn btn-primary" type="button" data-toggle="modal" data-target="#exampleModal">Comprar</button>').addClass('disabled');
});
</script>
     <script>
    $('#cerrar').click(function() {
  $('#btn-cuatro').html('<button style="width: 92.4167px; height:38px; "  id="btn-cuatro" class="btn btn-primary" type="button" data-toggle="modal" data-target="#exampleModal">Comprar</button>').addClass('disabled');
});
</script>

    <script src="assets/js/jquery.payform.min.js" ></script>
    <script src="assets/js/script.js"></script>
<script>
  $(document).ready(function(){
      
  $('#ejecuta').click(function(){ 
      alertify.alert("Gracias por su compra");
  });
  })
</script>


    </body>
</html>
