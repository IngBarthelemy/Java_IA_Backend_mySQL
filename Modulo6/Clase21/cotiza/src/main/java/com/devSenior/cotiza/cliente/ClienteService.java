package com.devSenior.cotiza.cliente;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import com.devSenior.cotiza.cliente.dto.ClienteRequest;
import com.devSenior.cotiza.cliente.dto.ClienteResponse;

@Service
public class ClienteService {

    private final ClienteRepository clienteRepository;

    public ClienteService(ClienteRepository clienteRepository) {
        this.clienteRepository = clienteRepository;
    }

    public ClienteResponse crear(ClienteRequest request) {
        if (clienteRepository.existsByTelefono(request.telefono())) {
            throw new ResponseStatusException(HttpStatus.CONFLICT, "Ya existe un cliente con ese teléfono");
        }
        Cliente cliente = new Cliente(request.nombre(), request.telefono(), request.correo());
        return aResponse(clienteRepository.save(cliente));
    }

    public List<ClienteResponse> listar() {
        return clienteRepository.findAll().stream()
                .map(this::aResponse)
                .toList();
    }

    public ClienteResponse buscarPorId(Long id) {
        return clienteRepository.findById(id)
                .map(this::aResponse)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Cliente no encontrado"));
    }

    private ClienteResponse aResponse(Cliente cliente) {
        return new ClienteResponse(
                cliente.getId(),
                cliente.getNombre(),
                cliente.getTelefono(),
                cliente.getCorreo(),
                cliente.getFechaCreacion()
        );
    }
}
