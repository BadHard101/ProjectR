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
public class UserCryptanalysisLevel2Service {
    private final UserRepository userRepository;

    /**
     * Theory
     */
    public void check_Level2_theory(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 5) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
    }

    /**
     * Practice 1
     */
    public boolean[] check_Level2_practice1(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("45333")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 6) { // CHANGE
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
    public boolean[] check_Level2_practice2(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("0.0")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 7) { // CHANGE
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
    public boolean[] check_Level2_practice3(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("True")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 8) { // CHANGE
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
    public boolean[] check_Level2_control(Answers answers, User user) { // CHANGE
        boolean[] result = {false, false};
        if (answers.getAnswer1().equals("80.0"))
            result[0] = true;
        if (answers.getAnswer2().equals("76.43"))
            result[1] = true;

        if (result[0] && result[1]
                && user.getCryptoProgress() <= 9) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
        return result;
    }

}
