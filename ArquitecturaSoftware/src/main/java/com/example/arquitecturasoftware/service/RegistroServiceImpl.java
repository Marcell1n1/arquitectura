package com.example.arquitecturasoftware.service;
import com.example.arquitecturasoftware.service.RegistroService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.arquitecturasoftware.domain.Cliente;
import com.example.arquitecturasoftware.repository.RegistroRepository;

import java.util.NoSuchElementException;

@Service
public class RegistroServiceImpl implements RegistroService {

    private final RegistroRepository registroRepository;

    @Autowired
    public RegistroServiceImpl(RegistroRepository registroRepository) {
        this.registroRepository = registroRepository;
    }

    @Override
    public Cliente registrarCliente(Cliente cliente) {
        return registroRepository.save(cliente);
    }
    @Override
    public Cliente actualizarCliente(int idCliente, Cliente cliente) {
        Cliente clienteExistente = registroRepository.findById(idCliente)
                .orElseThrow(() -> new NoSuchElementException("Cliente no encontrado"));
        if(cliente.getNombre_completo()!=null){
            clienteExistente.setNombre_completo(cliente.getNombre_completo());
        }
        if(cliente.getDireccion()!=null){
            clienteExistente.setDireccion(cliente.getDireccion());
        }
        if(cliente.getPassword()!=null){
            clienteExistente.setPassword(cliente.getPassword());
        }
        return registroRepository.save(clienteExistente);
    }
    @Override
    public Cliente obtenerCliente(int idCliente) {
        return registroRepository.findById(idCliente).orElse(null);
    }
}