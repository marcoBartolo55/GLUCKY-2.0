<%@page import="Clases.Doctores" %>
<%!Doctores doc;
String Cedula,Pass;
boolean a;%>
<%
doc= new Doctores();
Cedula=request.getParameter("CedulaForm");
Pass=request.getParameter("PassForm");
a=doc.LoginDoctores(Cedula,Pass);
System.out.println(a);

if (a== true){

System.out.println(a);

%>




<%-- Comentarios acerca de la p�gina que tiene que estar dentro de la cosa de login --%>
 <!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="../css/dashboardDoctores.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>

   <body>
    <div class="sidebar">
        <div class="logo-details">
          <i class='bx bxl-c-plus-plus icon'></i>
            <div class="logo_name">Glucky</div>
            <i class='bx bx-menu' id="btn" ></i>
        </div>
        <ul class="nav-list">
          <li>
              <i class='bx bx-search' ></i>
             <input type="text" placeholder="Buscar...">
             <span class="tooltip">Buscar en la p�gina</span>
          </li>
          <li>
            <a href="#">
              <i class='bx bx-grid-alt'></i>
              <span class="links_name">Panel de control</span>
            </a>
            <!-- Inicio del form-->

            <form action="#" class="forminvi">
                    
              <input type="text" id="CURP" name="CURP" value="#" class="forminvitex" disabled  ><br>
            
            
              <input type="submit" value="Enviarcurp" class="forminvibu">
              
            </form> 

  <!-- Final del form-->
             <span class="tooltip">Centro de informaci�n</span>
          </li>
          <li>
           <a href="#">
             <i class='bx bx-user' ></i>
             <span class="links_name">Pacientes</span>
           </a>
           <!-- Inicio del form-->

           <form action="#" class="forminvi">
                    
            <input type="text" id="CURP" name="CURP" value="#" class="forminvitex" disabled  ><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Buscar pacientes</span>
         </li>
         <li>
           <a href="#">
             <i class='bx bx-chat' ></i>
             <span class="links_name">Chateo con pacientes</span>
           </a>
           <!-- Inicio del form-->

           <form action="#" class="forminvi">
                    
            <input type="text" id="CURP" name="CURP" value="#" class="forminvitex" disabled  ><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Chatear con pacientes</span>
         </li>
       
         <li>
           <a href="#">
             <i class='bx bx-circle' ></i>
             <span class="links_name">Peticiones</span>
           </a>
           <!-- Inicio del form-->

           <form method="post" action="verPacientesDoctor.jsp" class="forminvi">
                    
            <input type="text"  name="CEDULA" value="<%=Cedula%>" class="forminvitex"  ><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Ver peticiones</span>
         </li>
         <li>
           <a href="#">
             <i class='bx bx-book-bookmark' ></i>
             <span class="links_name">Citas</span>
           </a>
           <!-- Inicio del form-->

           <form action="#" class="forminvi">
                    
            <input type="text" id="CURP" name="CURP" value="#" class="forminvitex" disabled  ><br>
          
          
            <input type="submit" value="Enviarcurp" class="forminvibu">
            
          </form> 

<!-- Final del form-->
           <span class="tooltip">Ver mi agenda de citas</span>
         </li>
         
        
         <li class="profile">
             <div class="profile-details">
               <!--<img src="profile.jpg" alt="profileImg">-->
               <div class="name_job">
                 <div class="name">Nombre usuario</div>
                 <div class="job">Doctor</div>
               </div>
             </div>
             <i class='bx bx-log-out' id="log_out" ></i>
         </li>
        </ul>
      </div>
   
   
   
  <section class="home-section">
    <div class="text">
      
    </div>
   
  <div class="container">
      <div class="title">Buenos dias 
          <%
             //////Nombre del doctor
             System.out.println("Nombre del doctor");

          %> 
      
      </div>
      <div class="content">

        <br>
         <!--<div class=textoarriba> -->
         <!--   Tu endocrinologo profesional sanitario EPS puede conectarse a tu cuenta de Glucky y realizar seguimiento s etu diabetes en remoto.-->
         <!--  Para ello el EPS debe registrarse primero en Glucky -->
         <!--  <br>-->
         <!--</div> -->
      
         <!--  Aqu� va el contenido de todo lo que quieran poner -->
        
          <div class="row">
            <div class="column">
              <!-- Aqu� va el contenido de todo lo que quieran poner -->


              <div class="rowdos">
                <div class="columntercera" >
                    
                    <!--   aqu� va cada uno de los cuadrados que colocaremos  -->
                    <div class="cuadradodatos">
                        
                         <!--   aqu� va un nuevo div de textos  -->
                         <div class="nivel">
                    <%
                    //////Promedio de los niveles de presi�n de los pacientes
                    System.out.println("Promedio de presi�n");

                    %> 
                         </div>
                    
                         <div class="categoria">
                            Presi�n
                         </div>  

                    </div>


                    <!-- nuevo cuadrado blanco de textos-->

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////Total de pacientes que han solicitado unirse a un doctor
                    System.out.println("Total de pacientes que se han registrado para tener doctor");

                    %>  
                     Solicitudes
                        <div class="niveldetrata">
                    <%
                    //////Total de pacientes que han solicitado unirse a un doctor
                    System.out.println("Total de pacientes que se han registrado para tener doctor");

                    %> 
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////Total de pacientes tipo 2
                    System.out.println("Total de pacientes tipo 2");

                    %> 
                     pacientes tipo 2
                        <div class="niveldetrataam">
                    <%
                    //////Total de pacientes tipo 2
                    System.out.println("Total de pacientes tipo 2");

                    %>  
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////Total de pacientes sin dietas
                    System.out.println("Total de pacientes sin dietas");

                    %>  
                    sin dietas
                        <div class="niveldetrataroj">
                    <%
                    //////Total de pacientes sin dietas
                    System.out.println("Total de pacientes sin dietas");

                    %>  
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                </div>
                <div class="columntercera" >
                  

                    <!--   aqu� va cada uno de los cuadrados que colocaremos  -->
                    <div class="cuadradodatosgluco">
                        
                        <!--   aqu� va un nuevo div de textos  -->
                        <div class="nivelgluco">
                    <%
                    //////Promedio de niveles de azucar de los pacientes
                    System.out.println("Promedio de niveles de azucar de los pacientes");

                    %> 
                        </div>
                   
                        <div class="categoria">
                           Azucar
                        </div>  

                     </div>

                      <!-- nuevo cuadrado blanco de textos-->

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////m�todos de agarrar datos de doctores total de citas
                    System.out.println("N�mero de citas totales");

                    %> 
                     Citas pendientes
                        <div class="niveldetratados">
                    <%
                    //////m�todos de agarrar datos de doctores total de citas
                    System.out.println("N�mero de citas totales");

                    %> 
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////m�todos de agarrar datos de pacientes tipo 1
                    System.out.println("N�mero de pacientes tipo 1");

                    %> 
                     Paciente tipo 1
                        <div class="niveldetratadosaz">
                    <%
                    //////m�todos de agarrar datos de pacientes tipo 1
                    System.out.println("N�mero de pacientes tipo 1");

                    %>
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                    
                </div>
                <div class="columntercera">

                  <!--   aqu� va cada uno de los cuadrados que colocaremos  -->
                  <div class="cuadradodatosdos">
                        
                    <!--   aqu� va un nuevo div de textos  -->
                    <div class="niveldos">
                     <%
                    //////m�todos de agarrar datos de doctores (numero de citas)
                    System.out.println("N�mero de citas totales");
             
                    %>
                    </div>

                    <div class="categoriados">
                      
                       Citas
                    </div>  

                  </div>

                    <!-- nuevo cuadrado blanco de textos-->

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////m�todos de agarrar datos de pacientes afiliados al doctor
                    System.out.println("N�mero de pacientes tipo 3");
             
                    %>
                      pacientes tipo 1
                        <div class="niveldetratatres">
                    <%
                    //////m�todos de agarrar datos de pacientes afiliados al doctor
                    System.out.println("N�mero de pacientes tipo 3");
             
                    %>
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                    <br>

                    <div class="cuadradodatosblancostratamientos">
                    <%
                    //////m�todos de agarrar datos de pacientes afiliados al doctor
                    System.out.println("N�mero de pacientes sin tratamientos");
             
                    %>
                      Sin tratamiento
                        <div class="niveldetratatresver">
                    <%
                    //////m�todos de agarrar datos de pacientes afiliados al doctor
                    System.out.println("N�mero de pacientes sin tratamientos");
             
                    %>
                           
                            
                            <div class="ojo">
                              <i class='fa fa-eye'></i>
                            </div>    
                        </div>
                    </div>

                </div>
              </div>


                 <!-- Aqu� va la supuesta grafica  -->
              <div class="grafica">


               
              
              </div>
                <!-- Aqu� va la supuesta grafica  -->

            </div>
            <div class="columna2">
              <!-- Aqu� va el contenido de todo lo que quieran poner -->
               
                
                <div class="recuadrogris">
                  
                    
                    <%
                    //////m�todos de agarrar nombre de mi docto
                    System.out.println("Nombre del doctor");
                    %>
                    <br>
                    <br>
                    Avisos
                    <br>
                   
                    <br>
                    
                    
                    
                     <%
                    //////debemos de hacer while de notificaciones de la bd
                    
                   /// while(condicion){
                     out.println("<div class='cuadradonoti'>");
                        
                     out.println("</div>");

                       /// este br se necesita
                     out.println("<br>");
                     

                   /// cierre de la condici�n
                    %>
                    }
                  
                    <!-- Este br se necesita -->

                   

                   

                   
          
                    <div class="cuadradonotideabajo">
          
                      Recibe notificaciones sobre tus pacientes y pr�ximas citas

                  </div>

                </div>



            </div>
          </div>

         <br>
         <br>

      </div>
  </div>

    
</section>
  <script>
  let sidebar = document.querySelector(".sidebar");
  let closeBtn = document.querySelector("#btn");
  let searchBtn = document.querySelector(".bx-search");

  closeBtn.addEventListener("click", ()=>{
    sidebar.classList.toggle("open");
    menuBtnChange();//calling the function(optional)
  });

  searchBtn.addEventListener("click", ()=>{ // Sidebar open when you click on the search iocn
    sidebar.classList.toggle("open");
    menuBtnChange(); //calling the function(optional)
  });

  // following are the code to change sidebar button(optional)
  function menuBtnChange() {
   if(sidebar.classList.contains("open")){
     closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");//replacing the iocns class
   }else {
     closeBtn.classList.replace("bx-menu-alt-right","bx-menu");//replacing the iocns class
   }
  }
  </script>
</body>
</html>
  





<%

    } else{
System.out.println(a);

%>





<%
}
%>