package com.example.rschir_buysell.services.Cryptanalysis.Level1;

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
    public boolean[] check_Level1_theory(Answers answers, User user) {
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

        if (result[0] && result[1] && result[2] && result[3] && result[4] && user.getCryptoProgress() <= 0) {
            user.setCryptoProgress(user.getCryptoProgress()+1);
            userRepository.save(user);
        }
        return result;
    }


    /**
     * Practice 1
     */
    public boolean[] check_Level1_practice1(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("ПЕРВОГО ЧИСЛА МАРТА НА ЗАКАТЕ ИТАЛИЯ ПЛАНИРУЕТ ЗАХВАТ ОСТРОВА КЕРКИРА")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 1) { // CHANGE
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
    public boolean[] check_Level1_practice2(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("ПЕРВОГО ЧИСЛА МАРТА НА ЗАКАТЕ ИТАЛИЯ ПЛАНИРУЕТ ЗАХВАТ ОСТРОВА КЕРКИРА")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 2) { // CHANGE
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
    public boolean[] check_Level1_practice3(Answers answers, User user) { // CHANGE
        boolean[] result = {false};
        if (answers.getAnswer1().equals("ПЕРВОГО ЧИСЛА МАРТА НА ЗАКАТЕ ИТАЛИЯ ПЛАНИРУЕТ ЗАХВАТ ОСТРОВА КЕРКИРА")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 3) { // CHANGE
                user.setCryptoProgress(user.getCryptoProgress()+1);
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
        boolean[] result = {false};
        if (answers.getAnswer1().equals("I WAS ABLE TO HANDLE THE CAESAR CIPHER")) {
            result[0] = true;

            if (user.getCryptoProgress() <= 4) { // CHANGE
                user.setCryptoProgress(user.getCryptoProgress()+1);
                userRepository.save(user);
            }
            userRepository.save(user);
        }
        return result;
    }

}
