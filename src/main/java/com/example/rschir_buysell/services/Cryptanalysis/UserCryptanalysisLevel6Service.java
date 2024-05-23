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
public class UserCryptanalysisLevel6Service {
    private final UserRepository userRepository;

    /**
     * Theory
     */
    public void check_Level6_theory(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 26) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
    }


    /**
     * Practice 0
     */
    public void check_Level6_practice0(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 27) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
    }


    /**
     * Practice 1
     */
    public boolean[] check_Level6_practice1(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("dabccadbbdac")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 28) { // CHANGE
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
    public boolean[] check_Level6_practice2(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("4,405")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 29) { // CHANGE
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
    public boolean[] check_Level6_practice3(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("bziperjvofhluayxncdmtwkgsq")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 30) { // CHANGE
                user.setCryptoProgress(user.getCryptoProgress() + 1);
                userRepository.save(user);
            }
            userRepository.save(user);
        }
        return result;
    }

    /**
     * Practice 4
     */
    public boolean[] check_Level6_practice4(Answers answers, User user) { // CHANGE
        boolean[] result = {false, false};
        if (answers.getAnswer1().equals("24"))
            result[0] = true;
        if (answers.getAnswer2().equals("152,285"))
            result[1] = true;

        if (result[0] && result[1]
                && user.getCryptoProgress() <= 31) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
        return result;
    }

    /**
     * Practice 5
     */
    public void check_Level6_practice5(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 32) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
    }

    /**
     * Practice 6
     */
    public void check_Level6_practice6(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 33) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
    }

    /**
     * Practice 7
     */
    public void check_Level6_practice7(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 34) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
    }

    /**
     * Practice 8
     */
    public void check_Level6_practice8(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 35) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
    }

    /**
     * Practice 9
     */
    public boolean[] check_Level6_practice9(Answers answers, User user) { // CHANGE
        boolean[] result = {false, false, false};
        if (answers.getAnswer1().equals("znufbamhegxvdprtkojiywcslq"))
            result[0] = true;
        if (answers.getAnswer2().equals("iseeareddoor"))
            result[1] = true;

        if (result[0] && result[1]
                && user.getCryptoProgress() <= 36) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
        return result;
    }

    /**
     * Control
     */
    public boolean[] check_Level6_control(Answers answers, User user) { // CHANGE
        boolean[] result = {false, false, false};
        if (answers.getAnswer1().equals("baxwzwxgaeipunfimmasw"))
            result[0] = true;
        if (answers.getAnswer2().equals("33!"))
            result[1] = true;
        if (answers.getAnswer3().equals(">"))
            result[2] = true;

        if (result[0] && result[1] && result[2]
                && user.getCryptoProgress() <= 37) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress() + 1);
            userRepository.save(user);
        }
        return result;
    }
}
