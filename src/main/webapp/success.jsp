<%@page language="java" %>
<%@page import="com.oasis.JobApp.model.JobPost" %>
<html>
    <head>
        <title>Job App - Success</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    </head>
    <body>
        <nav>
            <a href="home">Home</a>
            <a href="alljobs">All Jobs</a>
            <a href="contact">Contact Us</a>
        </nav>

        <div class="container">
            <div class="success-header">
                <h2>Job Posted Successfully!</h2>
                <p class="success-message">Your job posting has been submitted and is now live.</p>
            </div>

            <%
                JobPost jobPost = (JobPost) request.getAttribute("jobPost");
                if (jobPost != null) {
            %>
                <div class="job-details">
                    <h3 class="job-title"><%= jobPost.getPostProfile() %></h3>

                    <div class="detail-row">
                        <span class="detail-label">Job ID:</span>
                        <span class="detail-value"><%= jobPost.getPostId() %></span>
                    </div>

                    <div class="detail-row">
                        <span class="detail-label">Description:</span>
                        <span class="detail-value"><%= jobPost.getPostDescription() %></span>
                    </div>

                    <div class="detail-row">
                        <span class="detail-label">Experience Required:</span>
                        <span class="detail-value"><%= jobPost.getReqExperience() %> years</span>
                    </div>

                    <div class="detail-row">
                        <span class="detail-label">Tech Stack:</span>
                        <span class="detail-value">
                            <%
                                java.util.ArrayList<String> techStacks = jobPost.getPostTechStack();
                                if (techStacks != null && !techStacks.isEmpty()) {
                                    for (String tech : techStacks) {
                            %>
                                <span class="tech-stack"><%= tech %></span>
                            <%
                                    }
                                }
                            %>
                        </span>
                    </div>
                </div>

                <div class="action-buttons">
                    <a href="addjob" class="btn btn-primary">Post Another Job</a>
                    <a href="alljobs" class="btn btn-secondary">View All Jobs</a>
                </div>
            <%
                } else {
            %>
                <div class="no-job-message">
                    <h3>No Job Details Available</h3>
                    <p>The job posting details could not be retrieved.</p>
                </div>
            <%
                }
            %>
        </div>
    </body>
</html>