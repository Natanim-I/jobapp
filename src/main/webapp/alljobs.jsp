<%@page language="java" %>
<%@page import="com.oasis.JobApp.model.JobPost" %>
<%@page import="java.util.List" %>
<html>
    <head>
        <title>Job App - All Jobs</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    </head>
    <body>
        <nav>
            <a href="home">Home</a>
            <a href="alljobs">All Jobs</a>
            <a href="contact">Contact Us</a>
        </nav>

        <div class="container">
            <h2>All Jobs</h2>
            <%
                List<JobPost> jobs = (List<JobPost>) request.getAttribute("jobs");
                if (jobs != null && !jobs.isEmpty()) {
            %>
                <div class="jobs-grid">
                    <%
                        for (JobPost job : jobs) {
                    %>
                        <div class="job-card">
                            <h3><%= job.getPostProfile() %></h3>
                            <p><strong>Job Id:</strong> <%= job.getPostId() %></p>
                            <p><strong>Description:</strong> <%= job.getPostDescription() %></p>
                            <p><strong>Experience Required:</strong> <%= job.getReqExperience() %> years</p>
                            <p><strong>Tech Stack:</strong></p>
                            <%
                                List<String> techStacks = job.getPostTechStack();
                                if (techStacks != null && !techStacks.isEmpty()) {
                                    for (String tech : techStacks) {
                            %>
                                <span class="tech-stack"><%= tech %></span>
                            <%
                                    }
                                }
                            %>
                        </div>
                    <%
                        }
                    %>
                </div>
            <%
                } else {
            %>
                <div class="no-jobs">
                    <h3>No Jobs Available</h3>
                    <p>Check back later for new job opportunities!</p>
                </div>
            <%
                }
            %>
        </div>
    </body>
</html>