<div class="message"><@flash name="message"/></div><br>

<h2>Lista doctores</h2>
<table style="margin:30px">
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Especialidad</th>
        <th></th>
    </tr>
<#list doctor as doc>
    <tr>
        <td>
            ${doc.id}
        </td>
        <td>
            ${doc.nombre_doctor}
        </td>
        <td>
            ${doc.apellido_doctor}
        </td>
        <td>
            ${doc.especialidad}
        </td>
        <td>
        <@form  id=doc.id action="delete" method="DELETE" html_id=doc.id >
                <button type="submit">Borrar</button>
            </@form>
        </td>
    </tr>
</#list>
</table>
<@link_to action="formularioDoctor"><h4>Ingresar nuevo Doctor</h4></@link_to>

