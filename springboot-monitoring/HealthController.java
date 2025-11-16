package com.wpmonitor.controller;

import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import java.net.*;

@RestController
public class HealthController {

    @GetMapping("/health/wp")
    public ResponseEntity<String> checkWordPress() {
        try {
            URL url = new URL("http://your-wordpress-url");
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");

            int status = conn.getResponseCode();

            return ResponseEntity.ok("WordPress Status: " + status);
        } catch (Exception e) {
            return ResponseEntity.status(500).body("WordPress is DOWN");
        }
    }
}
