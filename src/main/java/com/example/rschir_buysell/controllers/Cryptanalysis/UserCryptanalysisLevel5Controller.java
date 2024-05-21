package com.example.rschir_buysell.controllers.Cryptanalysis;

import com.example.rschir_buysell.models.Answers;
import com.example.rschir_buysell.models.User;
import com.example.rschir_buysell.services.Cryptanalysis.UserCryptanalysisLevel5Service;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * Level5
 */
@Controller
@RequiredArgsConstructor

public class UserCryptanalysisLevel5Controller {
    private final UserCryptanalysisLevel5Service userCryptanalysisLevel5Service;

    /**
     * Theory
     */
    @GetMapping("/open_Level5_theory")
    public String open_Level5_theory(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        return "cryptanalysis/level5/theory";
    }

    @PostMapping("/check_Level5_theory")
    public String check_Level5_theory(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        model.addAttribute("openPracLable", "Отлично, теперь вам доступен следующий этап!");
        userCryptanalysisLevel5Service.check_Level5_theory(answers, user);
        return "cryptanalysis/level5/theory";
    }

    /**
     * Practice 1
     */
    @GetMapping("/open_Level5_practice1")
    public String open_Level5_practice1(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 1) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level5/practice1";
    }

    @PostMapping("/check_Level5_practice1")
    public String check_Level5_practice1(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        model.addAttribute("openPracLable", "Отлично, теперь доступен следующий этап!");
        userCryptanalysisLevel5Service.check_Level5_practice1(answers, user);
        return "cryptanalysis/level5/practice1";
    }

    /**
     * Practice 2
     */
    @GetMapping("/open_Level5_practice2")
    public String open_Level5_practice2(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 2) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level5/practice2";
    }

    @PostMapping("/check_Level5_practice2")
    public String check_Level5_practice2(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel5Service.check_Level5_practice2(answers, user);
        model.addAttribute("result", result);
        return "cryptanalysis/level5/practice2";
    }

    /**
     * Practice 3
     */
    @GetMapping("/open_Level5_practice3") // CHANGE
    public String open_Level5_practice3(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 3) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level5/practice3"; // CHANGE
    }

    @PostMapping("/check_Level5_practice3") // CHANGE
    public String check_Level5_practice3(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel5Service.check_Level5_practice3(answers, user); // CHANGE
        model.addAttribute("result", result);
        return "cryptanalysis/level5/practice3"; // CHANGE
    }

    /**
     * Control
     */
    @GetMapping("/open_Level5_control") // CHANGE
    public String open_Level5_control(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 4) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level5/control"; // CHANGE
    }

    @PostMapping("/check_Level5_control") // CHANGE
    public String check_Level5_control(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel5Service.check_Level5_control(answers, user); // CHANGE
        model.addAttribute("result", result);
        return "cryptanalysis/level5/control"; // CHANGE
    }
}
