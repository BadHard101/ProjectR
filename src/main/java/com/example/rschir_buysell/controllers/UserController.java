package com.example.rschir_buysell.controllers;

import com.example.rschir_buysell.models.User;
import com.example.rschir_buysell.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.web.WebAttributes;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.security.Principal;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/login")
    public String login() {
        return "authorization/login";
    }

    @GetMapping("/login-error")
    public String login(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession(false);
        String errorMessage = null;
        if (session != null) {
            AuthenticationException ex = (AuthenticationException) session
                    .getAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
            if (ex != null) {
                errorMessage = ex.getMessage();
            }
        }
        model.addAttribute("errorMessage", "Введены неверные данные");
        return "authorization/login";
    }

    @GetMapping("/registration")
    public String registration() {
        return "authorization/registration";
    }

    @PostMapping("/registration")
    public String createUser(User user, Model model) {
        if (!userService.createUser(user)) {
            model.addAttribute("errorMessage",
                    "Пользователь с email: " + user.getEmail() + " уже существует");
            return "authorization/registration";
        }
        return "redirect:/login";
    }

    @GetMapping("")
    public String categories(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("user", user);
        return "user/main";
    }
}
