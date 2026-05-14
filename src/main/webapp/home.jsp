<%@page language="java" %>
<html>
    <head>
        <title>Job App - Home</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    </head>
    <body>
        <nav>
            <a href="home">Home</a>
            <a href="alljobs">All Jobs</a>
            <a href="contact">Contact Us</a>
        </nav>

        <div class="home-container">
            <h2>Welcome to our Job App</h2>
            <a href="addjob" class="cta-button">Add a Job Post</a>

            <div class="features">
            <a href="alljobs" class="home-link">
                <div class="feature-card">
                    <h3>Browse Jobs</h3>
                    <p>Explore thousands of job opportunities from top companies worldwide.</p>
                </div>
            </a>
            <a href="addjob" class="home-link">
                <div class="feature-card">
                    <h3>Post Jobs</h3>
                    <p>Easily post job openings and find the perfect candidates for your team.</p>
                </div>
            </a>
            </div>
        </div>
    </body>
</html>