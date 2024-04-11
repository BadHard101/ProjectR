package com.example.rschir_buysell.controllers.Cryptanalysis;

import com.example.rschir_buysell.models.Answers;
import com.example.rschir_buysell.models.User;
import com.example.rschir_buysell.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserCryptanalysisController {
    private final UserService userService;

    @GetMapping("openCryptanalysisLevels")
    public String openCryptanalysisLevels(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        return "cryptanalysis/levels";
    }

    /**
     * Level 1
     */
    @GetMapping("/open_Level1_theory")
    public String open_Level1_theory(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        return "cryptanalysis/level1/theory";
    }

    @PostMapping("/check_Level1_theory")
    public String check_Level1_theory(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        boolean[] result = userService.check_Level1_theory(answers, user);
        model.addAttribute("result", result);
        return "cryptanalysis/level1/theory";
    }

    @GetMapping("/open_Level1_practice1")
    public String open_Level1_practice1(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        return "cryptanalysis/level1/practice1";
    }

    @PostMapping("/check_Level1_practice1")
    public String check_Level1_practice1(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        boolean[] result = userService.check_Level1_practice1(answers, user);
        model.addAttribute("result", result);
        return "cryptanalysis/level1/practice1";
    }

    @GetMapping("open_Level1_control")
    public String open_Level1_control(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        return "cryptanalysis/level1/control";
    }
}
