<%@page import="Clases.Pacientes"%>
<%!Pacientes pa;
String Curp,Pass;
boolean a;%>
<%
    pa = new Pacientes();
    Curp = request.getParameter("CurpForm");
    Pass = request.getParameter("PassForm");
    a = pa.LoginPacientes(Curp,Pass);
    System.out.println(a);
    if(a==true){
        System.out.println(a);
  %>

<!DOCTYPE html>
<!-- Created by CodingLab |www.youtube.com/CodingLabYT-->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!--<title> Responsive Sidebar Menu  | CodingLab </title>-->
    <link rel="stylesheet" href="../css/dashboardPacientes.css">
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
          <span class="links_name">Panel</span>

          
        </a>
              <!-- Inicio del form-->

                        <form action="#" class="forminvi">
                    
                          <input type="text" id="CURP" name="CURP" value="<%=Curp%>" class="forminvitex" disabled  ><br>
                        
                        
                          <input type="submit" value="Enviarcurp" class="forminvibu">
                          
                        </form> 

              <!-- Final del form-->
         <span class="tooltip">Centro de informaci�n</span>
      </li>
      <li>
       <a href="#">
         <i class='bx bx-user' ></i>
         <span class="links_name">Doctores</span>
       </a>
       <!-- Inicio del form-->

       <form action="../jsp/conectarmeoVerDoctores.jsp" method="post" class="forminvi" >
                    
        <input type="text" name="CURP" value="<%=Curp%>" class="forminvitex"><br>
      
      
        <input type="submit" value="Enviarcurp" class="forminvibu">
        
      </form> 

<!-- Final del form-->
       <span class="tooltip">Buscar doctores</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-chat' ></i>
         <span class="links_name">Chateo con doctor</span>
       </a>
       <!-- Inicio del form-->

       <form action="#" class="forminvi">
                    
        <input type="text" id="CURP" name="CURP" value="<%=Curp%>" class="forminvitex" disabled  ><br>
      
      
        <input type="submit" value="Enviarcurp" class="forminvibu">
        
      </form> 

<!-- Final del form-->
       <span class="tooltip">Mensajes de mi doctor</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-pie-chart-alt-2' ></i>
         <span class="links_name">Niveles</span>
       </a>
       <!-- Inicio del form-->

       <form action="#" class="forminvi">
                    
        <input type="text" id="CURP" name="CURP" value="<%=Curp%>" class="forminvitex" disabled  ><br>
      
      
        <input type="submit" value="Enviarcurp" class="forminvibu">
        
      </form> 

<!-- Final del form-->
       <span class="tooltip">Estado</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-food-menu' ></i>
         <span class="links_name">Dietas</span>
       </a>
       <!-- Inicio del form-->

       <form action="#" class="forminvi">
                    
        <input type="text" id="CURP" name="CURP" value="<%=Curp%>" class="forminvitex" disabled  ><br>
      
      
        <input type="submit" value="Enviarcurp" class="forminvibu">
        
      </form> 

<!-- Final del form-->
       <span class="tooltip">Ver dietas</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-book-bookmark' ></i>
         <span class="links_name">Citas</span>
       </a>
       <!-- Inicio del form-->

       <form action="#" class="forminvi">
                    
        <input type="text" id="CURP" name="CURP" value="<%=Curp%>" class="forminvitex" disabled  ><br>
      
      
        <input type="submit" value="Enviarcurp" class="forminvibu">
        
      </form> 

<!-- Final del form-->
       <span class="tooltip">Ver mi agenda de citas</span>
     </li>
     <li>
       <a href="#">
         <i class='bx bx-heart' ></i>
         <span class="links_name">Tratamientos</span>
       </a>
       <!-- Inicio del form-->

       <form action="#" class="forminvi">
                    
        <input type="text" id="CURP" name="CURP" value="<%=Curp%> class="forminvitex" disabled  ><br>
      
      
        <input type="submit" value="Enviarcurp" class="forminvibu">
        
      </form> 

<!-- Final del form-->
       <span class="tooltip">Ver mis tratamientos</span>
     </li>
    
     <li class="profile">
         <div class="profile-details">
           <!--<img src="profile.jpg" alt="profileImg">-->
           <div class="name_job">
               <div class="name">
                     <%
           //////Nombre del paciente
           System.out.println("Nombre del paciente");
          %> 
                   
                   
               </div>
             <div class="job">Paciente</div>
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
       //////Nombre del paciente
       System.out.println("Nombre del paciente");
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
           /////Niveles de presi�n del paciente
           System.out.println("Niveles de presi�n del paciente");
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
           //////Total de tratamientos asignados
           System.out.println("Total de tratamientos asignados");
          %> 
                     Tratamientos
                        <div class="niveldetrata">
          <%
           //////Total de tratamientos asignados
           System.out.println("Total de tratamientos asignados");
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
           //////Nivel de azucar de pacienye promedio
           System.out.println("Nivel de azucar de pacienye promedio");
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
           //////Total de citas asignadas o pendientes
           System.out.println("Total de citas pendientes");
          %>  
                     Citas pendientes
                        <div class="niveldetratados">
          <%
           //////Total de citas asignadas o pendientes
           System.out.println("Total de citas pendientes");
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
           //////Total de tratamientos asignadas o pendientes
           System.out.println("Total de tratamientos pendientes");
          %> 
                    </div>

                    <div class="categoriados">
                      
                       Tratamiento
                    </div>  

                  </div>

                    <!-- nuevo cuadrado blanco de textos-->

                    <br>

                    <div class="cuadradodatosblancostratamientos">
          <%
           //////Total de dietas asignadas o pendientes
           System.out.println("Total de dietas pendientes");
          %> 
                      Dietas a seguir
                        <div class="niveldetratatres">
          <%
           //////Total de dietas asignadas o pendientes
           System.out.println("Total de dietas pendientes");
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

                <div class="textoarriba">jejejeje</div>


               
              
              </div>
                <!-- Aqu� va la supuesta grafica  -->

            </div>
            <div class="columna2">
              <!-- Aqu� va el contenido de todo lo que quieran poner -->
               
                
                <div class="recuadrogris">
                  
          <%
           /////Nombre del doctor asignado
           /////debemos de tener if no hay doctor poner q no hay doctor
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
                       out.println("notificaci�n en general de la base de datos");
                     out.println("</div>");

                       /// este br se necesita
                     out.println("<br>");
                     

                   /// cierre de la condici�n
                    %>
                    

                
               

                   
          
                    <div class="cuadradonotideabajo">
          
                      Recibe notificaciones sobre tu sal�d y pr�ximas citas

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
    }
    else{

%>
<!DOCTYPE html>
  <html lang="en" dir="ltr">
      <head>
          
      </head>
      <body>
          <script src="../js/JalarDatosUrl.js"></script>
      </body>
  </html>


 <%

    }
%>

