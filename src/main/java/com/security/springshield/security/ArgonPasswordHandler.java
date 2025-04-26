package com.security.springshield.security;

import org.springframework.security.crypto.argon2.Argon2PasswordEncoder;
import org.springframework.stereotype.Component;

@Component
public class ArgonPasswordHandler {
    private static final int saltLength = 16;
    private static final int hashLength = 32;
    private static final int parallelism = 4;
    private static final int memory = 65536;
    private static final int iterations = 3;

    Argon2PasswordEncoder encoder = new Argon2PasswordEncoder(
            saltLength,
            hashLength,
            parallelism,
            memory,
            iterations
    );

    public String encode(String password) {
        return encoder.encode(password);
    }

    public boolean compare(String rawPassword, String hashedPassword) {
        return encoder.matches(rawPassword, hashedPassword);
    }
}
