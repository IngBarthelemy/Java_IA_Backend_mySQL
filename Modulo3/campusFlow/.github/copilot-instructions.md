Reorganiza este proyecto Spring Boot por dominios de negocio.
Mueve Usuario, UsuarioRepository y UsuarioController al paquete
com.devsenior.campusflow.usuarios, separados en subpaquetes
model, repository y controller. Crea una capa service nueva
(UsuarioService) en com.devsenior.campusflow.usuarios.service,
y haz que el controller use el service en vez de usar el
repository directamente. No cambies la lógica existente.

Para reorganizar el proyecto Spring Boot por dominios de negocio, sigue estos pasos:1. Crea los paquetes necesarios:
    - Crea el paquete `com.devsenior.campusflow.usuarios.model` y mueve la clase `Usuario` a este paquete.
    - Crea el paquete `com.devsenior.campusflow.usuarios.repository` y mueve la interfaz `UsuarioRepository` a este paquete.
    - Crea el paquete `com.devsenior.campusflow.usuarios.controller` y mueve la clase `UsuarioController` a este paquete.
    - Crea el paquete `com.devsenior.campusflow.usuarios.service` y crea la clase `UsuarioService` en este paquete.
2. Actualiza los imports en las clases movidas:
    - En `UsuarioController`, actualiza los imports para que apunten a las nuevas ubicaciones de `Usuario`, `UsuarioRepository` y `UsuarioService`.
    - En `UsuarioService`, importa `Usuario` y `UsuarioRepository` desde sus nuevas ubicaciones.
3. Implementa la clase `UsuarioService` para que contenga la lógica de negocio relacionada con los usuarios. Por ejemplo, puedes crear métodos como `findAllUsuarios()`, `findUsuarioById(Long id)`, `saveUsuario(Usuario usuario)`, etc., que llamen a los métodos correspondientes del `
4. UsuarioRepository`
5. 6. Modifica `UsuarioController` para que use `UsuarioService` en lugar de `UsuarioRepository` directamente. Por ejemplo, si antes tenías algo como:
```java
@Autowired
private UsuarioRepository usuarioRepository;
```
Cámbialo a:
```java

