<%-- 
    Document   : asignarDietaDoctor
    Created on : 17 nov 2022, 00:18:40
    Author     : Gonzalo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">

  <head>

    <meta charset="UTF-8">
    <link rel="shortcut icon" href="../images/iconoglucky.ico">
    <title>Asiganción de Dieta</title>
    <link rel="stylesheet" href="../css/asignarDietaDoctor.css">
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link rel="shortcut icon" href="../img/iconoglucky.ico">

  </head>

<body>


  <div class="sidebar">
    <div class="logo-details">
      <img src="../img/iconoglucky.png" alt="icono" class="logo-details-icono">
        <div class="logo_name">&nbsp; Glucky</div>
        <i class='bx bx-menu' id="btn" ></i>
    </div>
    <ul class="nav-list">
      <li>
          <i class='bx bx-search' ></i>
         <input type="text" placeholder="Buscar...">
         <span class="tooltip">Buscar en la página</span>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-grid-alt'></i>
          <span class="links_name">Panel de control</span>
        </a>

        <!-- Inicio del form-->

        <form action="#" class="forminvi">
                    
          <input type="text" id="CURP" name="CURP" value="#" class="forminvitex"   ><br>
        
        
          <input type="submit" value="Enviarcurp" class="forminvibu">
          
        </form> 

        <!-- Final del form-->

         <span class="tooltip">Centro de información</span>
      </li>
      <li>
       <a href="#">
         <i class='bx bx-user' ></i>
         <span class="links_name">Pacientes</span>
       </a>

       <!-- Inicio del form-->

       <form action="#" class="forminvi">
                    
        <input type="text" id="CURP" name="CURP" value="#" class="forminvitex"   ><br>
      
      
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
                    
        <input type="text" id="CURP" name="CURP" value="#" class="forminvitex"   ><br>
      
      
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

       <form action="#" class="forminvi">
                    
        <input type="text" id="CURP" name="CURP" value="#" class="forminvitex"   ><br>
      
      
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
                    
        <input type="text" id="CURP" name="CURP" value="#" class="forminvitex"   ><br>
      
      
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

    <center>
    <div class="container">

        <div class="title">Buenos dias, usuario!</div>
        <div class="content">
          <br>
          <div class=textoarriba>
            Has seleccionado al paciente, ahora deberás elegir la dieta a seguir por tu paciente.
          </div>
            <br>
            <div class="moverle">
              <div class="datospaciente">
                <div class="datosaparecen">
                  <font color="white"><b>Paciente</b></font>
                  <br>
                  <br>
                  <b>Nombre Apellido Apellido</b>
                  <p>Paciente tipo 1</p>
                  <p>Regular sin cita</p>
                  <div class="fijador">
                    <div class="fijador2"></div>
                  </div>
                </div>
              </div>
              <div class="extra"></div>
              <div class="tratamiento">
                <table class="tabla">
                  <tr>
                    <td class="a">1</td>
                    <td class="b">Título del tratamiento</td>
                  </tr>
                  <tr>
                    <td colspan="2" class="c"><i>Deberás escribir la dieta de tu paciente; ¡usa el formato que quieras!</i></td>
                  </tr>
                  <tr>
                    <td colspan="2">
                      <button class="boton">
                         Siguiente >
                      </button>
                    </td>
                  </tr>
                </table>
              </div>
            </div>
        </div>

    </div>
  </center>

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