<h2>Formulario</h2><br>

<div class="message"><@flash name="message"/></div>

<h4>Doctor:</h4>
<@form action="add" method="POST">

<select name="id_doctor">
  <option value="">Seleccione Doctor...</option>
   <#list doctor as doc>
   <option value="${doc.id}">${doc.id} ${doc.nombre_doctor} ${doc.apellido_doctor}</option>
   </#list>
</select><span class="error">${(flasher.errores.id_doctor)!}</span><br><br>

<h4>Paciente:</h4>

<select name="id_paciente">
  <option value="">Seleccione Paciente...</option>
   <#list paciente as p>
   <option value="${p.id}">${p.id} ${p.nombre_paciente} ${p.apellido_paciente}</option>
   </#list>
</select><span class="error">${(flasher.errores.id_paciente)!}</span><br><br>

<input type="submit" value="Agregar">
</@form> 
<br>
<@link_to action="listaFicha">Ver lista ficha</@link_to>

