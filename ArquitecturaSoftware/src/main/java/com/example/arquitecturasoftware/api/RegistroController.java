package com.example.arquitecturasoftware.api;
import com.example.arquitecturasoftware.domain.Cliente;

import com.example.arquitecturasoftware.domain.Evaluacion;
import com.example.arquitecturasoftware.service.RegistroService;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
@RestController
@RequestMapping("api/v1/registro")
public class RegistroController {
    private final RegistroService registroService;
    public RegistroController(RegistroService registroService) {
        this.registroService = registroService;
    }

    @PostMapping
    public ResponseEntity<Cliente> registrarCliente(@RequestBody Cliente cliente) {
        return new ResponseEntity<Cliente>(registroService.registrarCliente(cliente),HttpStatus.CREATED);
    }
    @PutMapping("/{idCliente}")
    public Cliente actualizarCliente(@PathVariable int idCliente, @RequestBody Cliente cliente) {
        return registroService.actualizarCliente(idCliente, cliente);
    }
    @GetMapping("/{idCliente}")
    public ResponseEntity<Cliente> obtenerCliente(@PathVariable int idCliente) {
        Cliente cliente = registroService.obtenerCliente(idCliente);
        if (cliente != null) {
            return ResponseEntity.ok(cliente);
        } else {
            return ResponseEntity.notFound().build();
        }
    }
}