<div class="message"><@flash name="message"/></div>
<table style="margin:30px">
    <tr>
        <th>ID</th>
        <th>ID_Doctor</th>
        <th>ID_Paciente</th>
        <th></th>
    </tr>
<#list ficha as f>
    <tr>
        <td>
            ${f.id}
        </td>
        <td>
            ${f.id_doctor}
        </td>
        <td>
            ${f.id_paciente}
        </td>
        <td>
        <@form  id=f.id action="delete" method="DELETE" html_id=f.id >
                <button type="submit">Borrar</button>
            </@form>
        </td>
    </tr>
</#list>
</table>
<@link_to controller="Ficha">Volver</@link_to>
