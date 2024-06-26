package com.example.rschir_buysell.controllers.Cryptanalysis;

import com.example.rschir_buysell.models.Answers;
import com.example.rschir_buysell.models.User;
import com.example.rschir_buysell.services.Cryptanalysis.UserCryptanalysisLevel3Service;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * Level3
 */
@Controller
@RequiredArgsConstructor

public class UserCryptanalysisLevel3Controller {
    private final UserCryptanalysisLevel3Service userCryptanalysisLevel3Service;

    /**
     * Theory
     */
    @GetMapping("/open_Level3_theory")
    public String open_Level3_theory(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 10) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level3/theory";
    }

    @PostMapping("/check_Level3_theory")
    public String check_Level3_theory(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        model.addAttribute("openPracLable", "Отлично, теперь вам доступно практическое задание!");
        userCryptanalysisLevel3Service.check_Level3_theory(answers, user);
        return "cryptanalysis/level3/theory";
    }

    /**
     * Practice 1
     */
    @GetMapping("/open_Level3_practice1")
    public String open_Level3_practice1(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 11) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level3/practice1";
    }

    @PostMapping("/check_Level3_practice1")
    public String check_Level3_practice1(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel3Service.check_Level3_practice1(answers, user);
        model.addAttribute("result", result);
        return "cryptanalysis/level3/practice1";
    }

    /**
     * Practice 2
     */
    @GetMapping("/open_Level3_practice2")
    public String open_Level3_practice2(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 12) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level3/practice2";
    }

    @PostMapping("/check_Level3_practice2")
    public String check_Level3_practice2(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel3Service.check_Level3_practice2(answers, user);
        model.addAttribute("result", result);
        return "cryptanalysis/level3/practice2";
    }

    /**
     * Practice 3
     */
    @GetMapping("/open_Level3_practice3") // CHANGE
    public String open_Level3_practice3(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 13) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level3/practice3"; // CHANGE
    }

    @PostMapping("/check_Level3_practice3") // CHANGE
    public String check_Level3_practice3(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel3Service.check_Level3_practice3(answers, user); // CHANGE
        model.addAttribute("result", result);
        return "cryptanalysis/level3/practice3"; // CHANGE
    }

    /**
     * Control
     */
    @GetMapping("/open_Level3_control") // CHANGE
    public String open_Level3_control(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 14) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level3/control"; // CHANGE
    }

    @PostMapping("/check_Level3_control") // CHANGE
    public String check_Level3_control(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel3Service.check_Level3_control(answers, user); // CHANGE
        model.addAttribute("result", result);
        return "cryptanalysis/level3/control"; // CHANGE
    }
}
