package com.devsenior.campusflow.usuarios.repository;

import com.devsenior.campusflow.usuarios.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {
}
