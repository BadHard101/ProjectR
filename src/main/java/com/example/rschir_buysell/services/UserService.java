package com.example.rschir_buysell.services;

import com.example.rschir_buysell.models.Answers;
import com.example.rschir_buysell.models.User;
import com.example.rschir_buysell.models.enums.Role;
import com.example.rschir_buysell.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.security.Principal;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public boolean createUser(User user) {
        String email = user.getEmail();
        if (userRepository.findByEmail(email) != null) return false;
        user.setActive(true);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.getRoles().add(Role.ROLE_USER);
        log.info("Saving new User with email: {}", email);
        userRepository.save(user);
        return true;
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    public boolean[] check_Level1_theory(Answers answers) {
        boolean[] result = {false, false, false, false, false};
        if (answers.getAnswer1().equals("ROT13") ||
                answers.getAnswer1().equals("ROT-13"))
            result[0] = true;
        if (answers.getAnswer2().equals("Съешь же ещё этих мягких французских булок да выпей чаю."))
            result[1] = true;
        if (answers.getAnswer3().equals("Моноалфавитный шифр"))
            result[2] = true;
        if (answers.getAnswer4().equals("Н и ждм жгылн пнтлжгш, щы нтур рнр каыыч тчуспвтс."))
            result[3] = true;
        if (answers.getAnswer5().equals("-15"))
            result[4] = true;
        return result;
    }
}
