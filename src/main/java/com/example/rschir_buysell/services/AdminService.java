package com.example.rschir_buysell.services;

import com.example.rschir_buysell.models.User;
import com.example.rschir_buysell.models.enums.Role;
import com.example.rschir_buysell.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
@Slf4j
@RequiredArgsConstructor
public class AdminService {
    private final UserRepository userRepository;

    public User getClientByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    public User getClientById(Long id) {
        return userRepository.getById(id);
    }

    public List<User> findAllClients(String email) {
        List<User> users = new ArrayList<>();
        if (email != null) {
            users.add(userRepository.findByEmail(email));
        } else {
            users = userRepository.findAll();
        }
        return users;
    }

    public void banUser(Long id) {
        User user = userRepository.findById(id).orElse(null);
        if (user != null) {
            if (user.isActive()) {
                user.setActive(false);
                log.info("Ban user with id = {}; email: {}", user.getId(), user.getEmail());
            } else {
                user.setActive(true);
                log.info("Unban user with id = {}; email: {}", user.getId(), user.getEmail());
            }
            userRepository.save(user);
        }
    }

    public void changeUserRole(User user, String role) {
        Set<Role> roles = new HashSet<>();
        if (role != null && !role.isEmpty()) {
            roles.add(Role.valueOf(role));
        }
        user.setRoles(roles);
        userRepository.save(user);
    }
}
