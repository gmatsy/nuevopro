function click1(){
           
}
            function encender(){      
           document.getElementById("1").style.opacity="";
            document.getElementById("2").style.opacity="0.6";
            document.getElementById("3").style.opacity="0.6";
            document.getElementById("4").style.opacity="0.6";
            document.getElementById("btn-two").disabled=true;
            document.getElementById("btn-tres").disabled=true;
            document.getElementById("btn-cuatro").disabled=true;
        }
              function encender2(){
            document.getElementById("2").style.opacity="";     
            document.getElementById("1").style.opacity="0.6";
            document.getElementById("3").style.opacity="0.6";
            document.getElementById("4").style.opacity="0.6";
            document.getElementById("btn-one").disabled=true;
            document.getElementById("btn-tres").disabled=true;
            document.getElementById("btn-cuatro").disabled=true;
        }
        function encender3(){
            document.getElementById("3").style.opacity="";     
            document.getElementById("1").style.opacity="0.6";
            document.getElementById("2").style.opacity="0.6";
            document.getElementById("4").style.opacity="0.6";
            document.getElementById("btn-one").disabled=true;
            document.getElementById("btn-two").disabled=true;
            document.getElementById("btn-cuatro").disabled=true;
        }
        function encender4(){
            document.getElementById("4").style.opacity="";     
            document.getElementById("1").style.opacity="0.6";
            document.getElementById("2").style.opacity="0.6";
            document.getElementById("3").style.opacity="0.6";
            document.getElementById("btn-one").disabled=true;
            document.getElementById("btn-tres").disabled=true;
            document.getElementById("btn-two").disabled=true;
        }
        function dol(){
                   document.getElementById("curr_usd").style.background="orange";
                   document.getElementById("curr_eur").style.background="";
                   document.getElementById("curr_pen").style.background="";
                   document.getElementById("1.5").innerHTML="$99.00";
                   document.getElementById("2.5").innerHTML="$199.00";
                   document.getElementById("3.5").innerHTML="$299.00";
                   document.getElementById("4.5").innerHTML="$899.00";
                   
               }
                function eu(){
                   document.getElementById("curr_eur").style.background="orange";
                   document.getElementById("curr_usd").style.background="";
                   document.getElementById("curr_pen").style.background="";
                   document.getElementById("1.5").innerHTML="€"+(99.00*0.91).toFixed(2);
                   document.getElementById("2.5").innerHTML="€"+(199.00*0.91).toFixed(2);
                   document.getElementById("3.5").innerHTML="€"+(299.00*0.91).toFixed(2);
                   document.getElementById("4.5").innerHTML="€"+(899.00*0.91).toFixed(2);
               }
                function pen(){
                   document.getElementById("curr_eur").style.background="";
                   document.getElementById("curr_usd").style.background="";
                   document.getElementById("curr_pen").style.background="orange";
                   document.getElementById("1.5").innerHTML="S/"+(99.00*3.3).toFixed(2);
                   document.getElementById("2.5").innerHTML="S/"+(199.00*3.3).toFixed(2);
                   document.getElementById("3.5").innerHTML="S/"+(299.00*3.3).toFixed(2);
                   document.getElementById("4.5").innerHTML="S/"+(899.00*3.3).toFixed(2); 
                }