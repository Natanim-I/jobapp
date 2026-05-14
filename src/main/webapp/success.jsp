<%@page language="java" %>
<%@page import="com.oasis.JobApp.model.JobPost" %>
<html>
    <body>
        <nav>
            <a href="home">Home</a>
            <a href="alljobs">All Jobs</a>
            <a href="contact">Contact Us</a>
        </nav>
        <h2>Job Post Details</h2>
        <%
            JobPost jobPost = (JobPost) request.getAttribute("jobPost");
            if (jobPost != null) {
        %>
                <p><strong>Job Id:</strong> <%= jobPost.getPostId() %></p>
                <p><strong>Job Title:</strong> <%= jobPost.getPostProfile() %></p>
                <p><strong>Job Description:</strong> <%= jobPost.getPostDescription() %></p>
                <p><strong>Required Experience:</strong> <%= jobPost.getReqExperience() %> years</p>
                <p><strong>Tech Stacks:</strong>
                    <%
                        java.util.ArrayList<String> techStacks = jobPost.getPostTechStack();
                        for (int i = 0; i < techStacks.size(); i++) {
                            out.print(techStacks.get(i));
                            if (i < techStacks.size() - 1) {
                                out.print(", ");
                            }
                        }
                    %>
                </p>
        <%
            } else {
        %>
                <p>No job post details available.</p>
        <%
            }
        %>
    </body>
</html>