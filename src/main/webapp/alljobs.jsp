<%@page language="java" %>
<%@page import="com.oasis.JobApp.model.JobPost" %>
<%@page import="java.util.List" %>
<html>
    <body>
        <nav>
            <a href="home">Home</a>
            <a href="alljobs">All Jobs</a>
            <a href="contact">Contact Us</a>
        </nav>
        <h2>All Jobs</h2>
        <%
            List<JobPost> jobs = (List<JobPost>) request.getAttribute("jobs");
            if (jobs != null && !jobs.isEmpty()) {
                for (JobPost job : jobs) {
        %>
                    <p><strong>Job Id:</strong> <%= job.getPostId() %></p>
                    <p><strong>Job Title:</strong> <%= job.getPostProfile() %></p>
                    <p><strong>Job Description:</strong> <%= job.getPostDescription() %></p>
                    <p><strong>Required Experience:</strong> <%= job.getReqExperience() %> years</p>
                    <p><strong>Tech Stacks:</strong>
                        <%
                            List<String> techStacks = job.getPostTechStack();
                            if (techStacks != null && !techStacks.isEmpty()) {
                                for (int i = 0; i < techStacks.size(); i++) {
                                    out.print(techStacks.get(i));
                                    if (i < techStacks.size() - 1) {
                                        out.print(", ");
                                    }
                                }
                            }
                        %>
                    </p>
                    <hr>
        <%
                }
            } else {
        %>
                <p>No jobs available.</p>
        <%
            }
        %>
    </body>
</html>