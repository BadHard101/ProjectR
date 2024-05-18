package com.example.rschir_buysell.services.Cryptanalysis.Level2;

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
            user.setCryptoProgress(user.getCryptoProgress()+1);
            userRepository.save(user);
        }
    }


    /**
     * Practice 0
     */
    public void check_Level2_practice0(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 6) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress()+1);
            userRepository.save(user);
        }
    }


    /**
     * Practice 1
     */
    public boolean[] check_Level2_practice1(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("dabccadbbdac")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 7) { // CHANGE
                user.setCryptoProgress(user.getCryptoProgress()+1);
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
        if (answers.getAnswer1().equals("4,405")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 8) { // CHANGE
                user.setCryptoProgress(user.getCryptoProgress()+1);
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
        if (answers.getAnswer1().equals("bziperjvofhluayxncdmtwkgsq")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 9) { // CHANGE
                user.setCryptoProgress(user.getCryptoProgress()+1);
                userRepository.save(user);
            }
            userRepository.save(user);
        }
        return result;
    }

    /**
     * Practice 4
     */
    public boolean[] check_Level2_practice4(Answers answers, User user) { // CHANGE
        boolean[] result = {false, false};
        if (answers.getAnswer1().equals("24"))
            result[0] = true;
        if (answers.getAnswer2().equals("152,285"))
            result[1] = true;

        if (result[0] && result[1]
                && user.getCryptoProgress() <= 10) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress()+1);
            userRepository.save(user);
        }
        return result;
    }

    /**
     * Practice 5
     */
    public void check_Level2_practice5(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 11) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress()+1);
            userRepository.save(user);
        }
    }

    /**
     * Practice 6
     */
    public void check_Level2_practice6(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 12) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress()+1);
            userRepository.save(user);
        }
    }

    /**
     * Practice 7
     */
    public void check_Level2_practice7(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 13) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress()+1);
            userRepository.save(user);
        }
    }

    /**
     * Practice 8
     */
    public void check_Level2_practice8(Answers answers, User user) { // CHANGE
        if (user.getCryptoProgress() <= 14) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress()+1);
            userRepository.save(user);
        }
    }

    /**
     * Practice 9
     */
    public boolean[] check_Level2_practice9(Answers answers, User user) { // CHANGE
        boolean[] result = {false, false, false};
        if (answers.getAnswer1().equals("znufbamhegxvdprtkojiywcslq"))
            result[0] = true;
        if (answers.getAnswer2().equals("iseeareddoor"))
            result[1] = true;

        if (result[0] && result[1]
                && user.getCryptoProgress() <= 15) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress()+1);
            userRepository.save(user);
        }
        return result;
    }

    /**
     * Control
     */
    public boolean[] check_Level2_control(Answers answers, User user) { // CHANGE
        boolean[] result = {false, false, false};
        if (answers.getAnswer1().equals("baxwzwxgaeipunfimmasw"))
            result[0] = true;
        if (answers.getAnswer2().equals("33!"))
            result[1] = true;
            if (answers.getAnswer3().equals(">"))
            result[2] = true;

        if (result[0] && result[1] && result[2]
                && user.getCryptoProgress() <= 16) { // CHANGE
            user.setCryptoProgress(user.getCryptoProgress()+1);
            userRepository.save(user);
        }
        return result;
    }
}
