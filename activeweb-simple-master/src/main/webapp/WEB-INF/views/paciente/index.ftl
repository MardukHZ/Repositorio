<@content for="title">Lista pacientes</@content>
<div class="message"><@flash name="message"/></div><br>

<h2>Lista pacientes</h2>
<table style="margin:30px">
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Nacionalidad</th>
        <th></th>
    </tr>
<#list paciente as p>
    <tr>
        <td>
            ${p.id}
        </td>
        <td>
            ${p.nombre_paciente}
        </td>
        <td>
            ${p.apellido_paciente}
        </td>
        <td>
            ${p.nacionalidad}
        </td>
        <td>
        <@form  id=p.id action="delete" method="DELETE" html_id=p.id >
                <button type="submit">Borrar</button>
            </@form>
        </td>
    </tr>
</#list>
</table>
<@link_to action="formularioPaciente"><h4>Ingresar nuevo paciente</h4></@link_to>

