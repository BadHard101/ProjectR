package com.example.rschir_buysell.services.Steganography;

import com.example.rschir_buysell.models.Answers;
import com.example.rschir_buysell.models.User;
import com.example.rschir_buysell.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserSteganographyService {
    private final UserRepository userRepository;
    public boolean[] checkStegano_Level1(Answers answers, User user) {
        boolean[] result = {false, false, false, false, false};
        if (answers.getAnswer1().equals("стегосистема"))
            result[0] = true;
        if (answers.getAnswer2().equals("1499"))
            result[1] = true;
        if (answers.getAnswer3().equals("волосами") || answers.getAnswer3().equals("волосы"))
            result[2] = true;
        if (answers.getAnswer4().equals("внедрения") || answers.getAnswer4().equals("алгоритм внедрения"))
            result[3] = true;
            if (answers.getAnswer5().equals("форматирование"))
            result[4] = true;

        if (result[0] && result[1] && result[2] && result[3] && result[4]
                && user.getSteganoProgress() <= 0) {
            user.setSteganoProgress(user.getSteganoProgress()+1);
            userRepository.save(user);
        }
        return result;
    }
}
