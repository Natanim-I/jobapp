package com.oasis.JobApp.repo;

import com.oasis.JobApp.model.JobPost;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Repository
public class JobRepository {

    ArrayList<JobPost> jobs = new ArrayList<>(Arrays.asList(
            new JobPost(1, "Software Engineer", "Develop and maintain software applications.", 3, new ArrayList<>(Arrays.asList("Java", "Spring Boot", "SQL"))),
            new JobPost(2, "Frontend Developer", "Design and implement user interfaces.", 2, new ArrayList<>(Arrays.asList("JavaScript", "React", "CSS"))),
            new JobPost(3, "Data Scientist", "Analyze and interpret complex data.", 4, new ArrayList<>(Arrays.asList("Python", "Machine Learning", "Data Visualization")))
    ));

    public void addJob(JobPost job){
        jobs.add(job);
    }

    public List<JobPost> getAllJobs(){
        return jobs;
    }
}
