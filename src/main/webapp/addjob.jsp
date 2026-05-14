<%@page language="java" %>
<html>
    <body>
        <nav>
            <a href="home">Home</a>
            <a href="alljobs">All Jobs</a>
            <a href="contact">Contact Us</a>
        </nav>
        <h2>Please Submit Job Description</h2>
        <form action="addjob" method="post">
            <label for="title">Job Title:</label><br>
            <input type="text" id="title" name="title"><br>
            <label for="description">Job Description:</label><br>
            <textarea id="description" name="description"></textarea><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>