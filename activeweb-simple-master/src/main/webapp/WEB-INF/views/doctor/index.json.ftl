[
<#list doctor as doctor>
    {
        "id": "${doctor.id}",
        "nombre": "${doctor.nombre_doctor}",
        "apellido": "${doctor.apellido_doctor}",
        "especialidad": "${doctor.especialidad}"
    }
    <#if doctor_has_next>,</#if>
</#list>
]




