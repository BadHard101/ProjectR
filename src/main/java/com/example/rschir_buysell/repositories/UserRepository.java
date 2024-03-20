package com.example.rschir_buysell.repositories;

import com.example.rschir_buysell.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
