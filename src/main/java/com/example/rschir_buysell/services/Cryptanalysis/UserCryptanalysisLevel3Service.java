package com.example.rschir_buysell.services.Cryptanalysis;

import com.example.rschir_buysell.models.Answers;
import com.example.rschir_buysell.models.User;
import com.example.rschir_buysell.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserCryptanalysisLevel3Service {
    private final UserRepository userRepository;

    /**
     * Theory
     */
    public void check_Level3_theory(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 10) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
    }

    /**
     * Practice 1
     */
    public boolean[] check_Level3_practice1(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("73")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 11) { // CHANGE
                user.setCryptoProgress(user.getCryptoProgress() + 1);
                userRepository.save(user);
            }
            userRepository.save(user);
        }
        return result;
    }

    /**
     * Practice 2
     */
    public boolean[] check_Level3_practice2(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("Нет")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 12) { // CHANGE
                user.setCryptoProgress(user.getCryptoProgress() + 1);
                userRepository.save(user);
            }
            userRepository.save(user);
        }
        return result;
    }

    /**
     * Practice 3
     */
    public boolean[] check_Level3_practice3(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("61")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 13) { // CHANGE
                user.setCryptoProgress(user.getCryptoProgress() + 1);
                userRepository.save(user);
            }
            userRepository.save(user);
        }
        return result;
    }

    /**
     * Control
     */
    public boolean[] check_Level3_control(Answers answers, User user) { // CHANGE
        boolean[] result = {false, false};
        if (answers.getAnswer1().equals("2"))
            result[0] = true;
        if (answers.getAnswer2().equals("7046742763"))
            result[1] = true;

        if (result[0] && result[1]
                && user.getCryptoProgress() <= 14) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
        return result;
    }

}
