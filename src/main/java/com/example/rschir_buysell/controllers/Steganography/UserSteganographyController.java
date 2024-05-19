package com.example.rschir_buysell.controllers.Steganography;

import com.example.rschir_buysell.models.Answers;
import com.example.rschir_buysell.models.User;
import com.example.rschir_buysell.services.Cryptanalysis.Level1.UserCryptanalysisLevel1Service;
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

}
