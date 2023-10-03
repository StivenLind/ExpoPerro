<%-- 
    Document   : index
    Created on : 20/09/2023, 10:56:10 a. m.
    Author     : Grupo 7
--%>

<%@page import="com.umariana.mundo.exposicionPerro"%>
<%@page import="java.io.IOException"%>
<%@include file="temps/header.jsp" %>
     
   <!-- Imagen de encabezado con la clase "PerroBandera" -->
<%
            
            ArrayList <perro> misPerros = null;
            //String Tipo= request.getParameter("Tipo");
            String nombreEd= request.getParameter("nombreEdit");
            ServletContext context=  getServletContext();
            perro p= null;
            misPerros= exposicionPerro.deserializar( context);
 

        for( perro i : misPerros){
            if (i.getNombre().equals(nombreEd)){
                p=i; 
                break;
            }
        }
       
      
        %>     
   <image  class= "PerroBandera" src="./img/perro.jpg" width="100%" >
    <div class="row">
    <div class="col">
     <div class="card">
        <div class="card-body" >

   <!-- Formulario para ingresar información sobre un perro -->

            <form action="SvPerro" method="POST" enctype="multipart/form-data">

   <!-- Título del formulario -->
                <div class="container text-center">
                 <legend>Ingresar Perro </legend>
                  </div>
    <!-- Campo para ingresar el nombre del perro -->
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Nombre</span>
                        <input type="text" class="form-control" name="nombre" value="<%out.print(p.getNombre());%>">
                   </div>
     <!-- Campo para ingresar la raza del perro -->
                     <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Raza</span>
                        <input type="text" class="form-control" name="raza"  value="<%out.print(p.getRaza());%> ">
                   </div>
     
     
       <!-- Campo para ingresar la URL de la foto del perro -->
                  <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Foto</span>
                        <input type="file" class="form-control" name="foto" value="<%out.print(p.getImagen());%>" >
                   </div>
       
       
        <!-- desplegable para asignar puntos a un  perro -->
                    <select class="form-select" aria-label="Default select example" name="punto"  >
                        <option selected>Puntos</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                      </select>
                <br>
     <!-- Campo para ingresar la edad del perro -->
                        <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">Edad</span>
                        <input type="number" name="edad" class="form-control" min="0" step="1" value="<%out.print(p.getEdad());%>" required><br>
                        <input type="text" name="editar"  value="si" readonly> <!-- ocultar--->
                        </div> 

      <!-- Botón para enviar el formulario -->          
                 <div class="mb-3">
                         <input type="submit" value="Insertar Perro" class="btn btn-primary">
                   </div>
            </form>
             </div>
           </div>
        </div>
    
 
</nav>
              
   
<%@include file="temps/footer.jsp" %>


