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
public class UserCryptanalysisLevel1Service {
    private final UserRepository userRepository;

    /**
     * Theory
     */
    public void check_Level1_theory(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 0) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
    }

    /**
     * Practice 1
     */
    public boolean[] check_Level1_practice1(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("19")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 1) { // CHANGE
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
    public boolean[] check_Level1_practice2(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("23,9,11,4")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 2) { // CHANGE
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
    public boolean[] check_Level1_practice3(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("houseoftherisingsun")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 3) { // CHANGE
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
    public boolean[] check_Level1_control(Answers answers, User user) { // CHANGE
        boolean[] result = {false, false, false};
        if (answers.getAnswer1().equals("23"))
            result[0] = true;
        if (answers.getAnswer2().equals("mwiixviiwsjkviirvihvswiwxss"))
            result[1] = true;
        if (answers.getAnswer3().equals("0,12"))
            result[2] = true;

        if (result[0] && result[1] && result[2]
                && user.getCryptoProgress() <= 4) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
        return result;
    }

}
