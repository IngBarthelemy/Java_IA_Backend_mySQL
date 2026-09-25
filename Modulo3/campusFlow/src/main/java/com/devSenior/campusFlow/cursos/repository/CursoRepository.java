package com.devSenior.campusFlow.cursos.repository;

import com.devSenior.campusFlow.cursos.model.Curso;
import com.devSenior.campusFlow.usuarios.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface CursoRepository extends JpaRepository<Curso, Long> {
    Optional<Usuario> findByInstructorEmail(String email);

}
