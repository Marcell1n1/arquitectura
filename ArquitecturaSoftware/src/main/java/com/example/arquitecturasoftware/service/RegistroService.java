package com.example.arquitecturasoftware.service;
import com.example.arquitecturasoftware.domain.Cliente;

public interface RegistroService {
    Cliente registrarCliente(Cliente cliente);
    Cliente actualizarCliente(int idCliente, Cliente cliente);
    Cliente obtenerCliente(int idCliente);
}