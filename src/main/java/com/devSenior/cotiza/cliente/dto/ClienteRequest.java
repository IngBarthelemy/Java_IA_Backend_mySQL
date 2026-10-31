package com.devSenior.cotiza.cliente.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

public record ClienteRequest(
        @NotBlank @Size(max = 120) String nombre,
        @NotBlank @Pattern(regexp = "\\d{10}", message = "debe tener 10 dígitos") String telefono,
        @Email String correo
) {
}
