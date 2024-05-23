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
public class UserCryptanalysisLevel5Service {
    private final UserRepository userRepository;

    /**
     * Theory
     */
    public void check_Level5_theory(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 21) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
    }

    /**
     * Practice 1
     */
    public void check_Level5_practice1(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 22) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
    }

    /**
     * Practice 2
     */
    public boolean[] check_Level5_practice2(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("4,16,16,12,10,6,20")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 23) { // CHANGE
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
    public boolean[] check_Level5_practice3(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("Giovan Battista Bellaso")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 24) { // CHANGE
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
    public boolean[] check_Level5_control(Answers answers, User user) { // CHANGE
        boolean[] result = {false, false};
        if (answers.getAnswer1().equals("Я знаю то, что ничего не знаю."))
            result[0] = true;
        if (answers.getAnswer2().equals("1406408618241"))
            result[1] = true;

        if (result[0] && result[1]
                && user.getCryptoProgress() <= 25) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
        return result;
    }

}
