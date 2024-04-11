package com.example.rschir_buysell.controllers.Cryptanalysis.Level1;

import com.example.rschir_buysell.models.Answers;
import com.example.rschir_buysell.models.User;
import com.example.rschir_buysell.services.Cryptanalysis.Level1.UserCryptanalysisLevel1Service;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 * Level 1
 */
@Controller
@RequiredArgsConstructor

public class UserCryptanalysisLevel1Controller {
    private final UserCryptanalysisLevel1Service userCryptanalysisLevel1Service;

    @GetMapping("openCryptanalysisLevels")
    public String openCryptanalysisLevels(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        return "cryptanalysis/levels";
    }

    /**
     * Theory
     */
    @GetMapping("/open_Level1_theory")
    public String open_Level1_theory(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        return "cryptanalysis/level1/theory";
    }

    @PostMapping("/check_Level1_theory")
    public String check_Level1_theory(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel1Service.check_Level1_theory(answers, user);
        model.addAttribute("result", result);
        return "cryptanalysis/level1/theory";
    }

    /**
     * Practice 1
     */
    @GetMapping("/open_Level1_practice1")
    public String open_Level1_practice1(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 1) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level1/practice1";
    }

    @PostMapping("/check_Level1_practice1")
    public String check_Level1_practice1(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel1Service.check_Level1_practice1(answers, user);
        model.addAttribute("result", result);
        return "cryptanalysis/level1/practice1";
    }

    /**
     * Practice 2
     */
    @GetMapping("/open_Level1_practice2")
    public String open_Level1_practice2(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 2) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level1/practice2";
    }

    @PostMapping("/check_Level1_practice2")
    public String check_Level1_practice2(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel1Service.check_Level1_practice2(answers, user);
        model.addAttribute("result", result);
        return "cryptanalysis/level1/practice2";
    }

    /**
     * Practice 3
     */
    @GetMapping("/open_Level1_practice3") // CHANGE
    public String open_Level1_practice3(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 3) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level1/practice3"; // CHANGE
    }

    @PostMapping("/check_Level1_practice3") // CHANGE
    public String check_Level1_practice3(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel1Service.check_Level1_practice3(answers, user); // CHANGE
        model.addAttribute("result", result);
        return "cryptanalysis/level1/practice3"; // CHANGE
    }

    /**
     * Control
     */
    @GetMapping("/open_Level1_control") // CHANGE
    public String open_Level1_control(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 4) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level1/control"; // CHANGE
    }

    @PostMapping("/check_Level1_control") // CHANGE
    public String check_Level1_control(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel1Service.check_Level1_control(answers, user); // CHANGE
        model.addAttribute("result", result);
        return "cryptanalysis/level1/control"; // CHANGE
    }
}
