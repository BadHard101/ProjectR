package com.example.rschir_buysell.controllers.Steganography;

import com.example.rschir_buysell.models.Answers;
import com.example.rschir_buysell.models.User;
import com.example.rschir_buysell.services.Steganography.UserSteganographyService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserSteganographyController {
    private final UserSteganographyService userSteganographyService;

    @GetMapping("openSteganoLevels")
    public String openSteganoLevels(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        return "steganography/levels";
    }

    /**
     * Level1
     */
    @GetMapping("/openStegano_Level1")
    public String open_Level1(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        return "steganography/level1";
    }

    @PostMapping("/checkStegano_Level1")
    public String checkStegano_Level1(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        boolean[] result = userSteganographyService.checkStegano_Level1(answers, user);
        model.addAttribute("result", result);
        return "steganography/level1";
    }

    /**
     * Level2
     */
    @GetMapping("/openStegano_Level2")
    public String open_Level2(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getSteganoProgress() < 1) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "steganography/level2";
    }

    @PostMapping("/checkStegano_Level2")
    public String checkStegano_Level2(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        boolean[] result = userSteganographyService.checkStegano_Level2(answers, user);
        model.addAttribute("result", result);
        return "steganography/level2";
    }

    /**
     * Level3
     */
    @GetMapping("/openStegano_Level3")
    public String open_Level3(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getSteganoProgress() < 2) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "steganography/level3";
    }

    @PostMapping("/checkStegano_Level3")
    public String checkStegano_Level3(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        model.addAttribute("openPracLable", "Отлично, перейдем к следующему этапу!");
        userSteganographyService.checkStegano_Level3(answers, user);
        return "steganography/level3";
    }

    /**
     * Level4
     */
    @GetMapping("/openStegano_Level4")
    public String open_Level4(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getSteganoProgress() < 3) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "steganography/level4";
    }

    @PostMapping("/checkStegano_Level4")
    public String checkStegano_Level4(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        model.addAttribute("openPracLable", "Отлично, перейдем к следующему этапу!");
        userSteganographyService.checkStegano_Level4(answers, user);
        return "steganography/level4";
    }

    /**
     * Level5
     */
    @GetMapping("/openStegano_Level5")
    public String open_Level5(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        if (user.getSteganoProgress() < 4) {
            return "redirect:/openCryptanalysisLevels";
        }
        return "steganography/level5";
    }

    @PostMapping("/checkStegano_Level5")
    public String checkStegano_Level5(@ModelAttribute Answers answers, Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        model.addAttribute("openPracLable", "Поздравляем, вы прошли все уровни!");
        userSteganographyService.checkStegano_Level5(answers, user);
        return "steganography/level5";
    }

}
