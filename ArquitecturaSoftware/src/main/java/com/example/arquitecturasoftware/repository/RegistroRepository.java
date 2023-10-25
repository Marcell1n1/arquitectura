package com.example.arquitecturasoftware.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.example.arquitecturasoftware.domain.Cliente;

@Repository
public interface RegistroRepository extends JpaRepository<Cliente, Integer> {
}