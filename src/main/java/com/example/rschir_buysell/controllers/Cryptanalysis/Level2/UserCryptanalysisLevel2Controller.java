package com.example.rschir_buysell.controllers.Cryptanalysis.Level2;

import com.example.rschir_buysell.models.Answers;
import com.example.rschir_buysell.models.User;
import com.example.rschir_buysell.services.Cryptanalysis.Level2.UserCryptanalysisLevel2Service;
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

public class UserCryptanalysisLevel2Controller {
    private final UserCryptanalysisLevel2Service userCryptanalysisLevel2Service;

    /**
     * Theory
     */
    @GetMapping("/open_Level2_theory")
    public String open_Level2_theory(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 5) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level2/theory";
    }

    @PostMapping("/check_Level2_theory")
    public String check_Level2_theory(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        model.addAttribute("openPracLable", "Теперь вам доступно практические задание!");
        userCryptanalysisLevel2Service.check_Level2_theory(answers, user);
        return "cryptanalysis/level2/theory";
    }

    /**
     * Practice 0
     */
    @GetMapping("/open_Level2_practice0")
    public String open_Level2_practice0(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 6) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level2/practice0";
    }

    @PostMapping("/check_Level2_practice0")
    public String check_Level2_practice0(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        model.addAttribute("openPracLable", "Теперь вам доступно практические задание!");
        userCryptanalysisLevel2Service.check_Level2_practice0(answers, user);
        return "cryptanalysis/level2/practice0";
    }

    /**
     * Practice 1
     */
    @GetMapping("/open_Level2_practice1")
    public String open_Level2_practice1(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 7) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level2/practice1";
    }

    @PostMapping("/check_Level2_practice1")
    public String check_Level2_practice1(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel2Service.check_Level2_practice1(answers, user);
        model.addAttribute("result", result);
        return "cryptanalysis/level2/practice1";
    }

    /**
     * Practice 2
     */
    @GetMapping("/open_Level2_practice2")
    public String open_Level2_practice2(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 8) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level2/practice2";
    }

    @PostMapping("/check_Level2_practice2")
    public String check_Level2_practice2(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel2Service.check_Level2_practice2(answers, user);
        model.addAttribute("result", result);
        return "cryptanalysis/level2/practice2";
    }

    /**
     * Practice 3
     */
    @GetMapping("/open_Level2_practice3") // CHANGE
    public String open_Level2_practice3(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 9) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level2/practice3"; // CHANGE
    }

    @PostMapping("/check_Level2_practice3") // CHANGE
    public String check_Level2_practice3(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel2Service.check_Level2_practice3(answers, user); // CHANGE
        model.addAttribute("result", result);
        return "cryptanalysis/level2/practice3"; // CHANGE
    }

    /**
     * Practice 4
     */
    @GetMapping("/open_Level2_practice4") // CHANGE
    public String open_Level2_practice4(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 10) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level2/practice4"; // CHANGE
    }

    @PostMapping("/check_Level2_practice4") // CHANGE
    public String check_Level2_practice4(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel2Service.check_Level2_practice4(answers, user); // CHANGE
        model.addAttribute("result", result);
        return "cryptanalysis/level2/practice4"; // CHANGE
    }

    /**
     * Practice 5
     */
    @GetMapping("/open_Level2_practice5") // CHANGE
    public String open_Level2_practice5(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 11) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level2/practice5"; // CHANGE
    }

    @PostMapping("/check_Level2_practice5") // CHANGE
    public String check_Level2_practice5(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        model.addAttribute("openPracLable", "Теперь вам доступно практические задание!");
        userCryptanalysisLevel2Service.check_Level2_practice5(answers, user); // CHANGE
        return "cryptanalysis/level2/practice5"; // CHANGE
    }

    /**
     * Practice 6
     */
    @GetMapping("/open_Level2_practice6") // CHANGE
    public String open_Level2_practice6(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 12) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level2/practice6"; // CHANGE
    }

    @PostMapping("/check_Level2_practice6") // CHANGE
    public String check_Level2_practice6(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        model.addAttribute("openPracLable", "Теперь вам доступно практические задание!");
        userCryptanalysisLevel2Service.check_Level2_practice6(answers, user); // CHANGE
        return "cryptanalysis/level2/practice6"; // CHANGE
    }

    /**
     * Practice 7
     */
    @GetMapping("/open_Level2_practice7") // CHANGE
    public String open_Level2_practice7(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 13) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level2/practice7"; // CHANGE
    }

    @PostMapping("/check_Level2_practice7") // CHANGE
    public String check_Level2_practice7(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        model.addAttribute("openPracLable", "Теперь вам доступно практические задание!");
        userCryptanalysisLevel2Service.check_Level2_practice7(answers, user); // CHANGE
        return "cryptanalysis/level2/practice7"; // CHANGE
    }

    /**
     * Practice 8
     */
    @GetMapping("/open_Level2_practice8") // CHANGE
    public String open_Level2_practice8(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 14) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level2/practice8"; // CHANGE
    }

    @PostMapping("/check_Level2_practice8") // CHANGE
    public String check_Level2_practice8(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        model.addAttribute("openPracLable", "Теперь вам доступно практические задание!");
        userCryptanalysisLevel2Service.check_Level2_practice8(answers, user); // CHANGE
        return "cryptanalysis/level2/practice8"; // CHANGE
    }

    /**
     * Practice 9
     */
    @GetMapping("/open_Level2_practice9") // CHANGE
    public String open_Level2_practice9(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 15) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level2/practice9"; // CHANGE
    }

    @PostMapping("/check_Level2_practice9") // CHANGE
    public String check_Level2_practice9(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel2Service.check_Level2_practice9(answers, user); // CHANGE
        model.addAttribute("result", result);
        return "cryptanalysis/level2/practice9"; // CHANGE
    }


    /**
     * Control
     */
    @GetMapping("/open_Level2_control") // CHANGE
    public String open_Level2_control(Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        if (user.getCryptoProgress() < 16) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "cryptanalysis/level2/control"; // CHANGE
    }

    @PostMapping("/check_Level2_control") // CHANGE
    public String check_Level2_control(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) { // CHANGE
        model.addAttribute("user", user);
        boolean[] result = userCryptanalysisLevel2Service.check_Level2_control(answers, user); // CHANGE
        model.addAttribute("result", result);
        return "cryptanalysis/level2/control"; // CHANGE
    }
}