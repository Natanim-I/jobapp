package com.oasis.JobApp.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
public class JobPost {
    private int postId;
    private String postProfile;
    private String postDescription;
    private int reqExperience;
    private ArrayList<String> postTechStack;
}
