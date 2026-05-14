# JobApp - Spring Boot Job Portal

A modern, responsive job portal application built with Spring Boot, JSP, and CSS. This application allows users to post job listings and browse available jobs with a beautiful, interactive user interface.

## 🚀 Features

### ✨ Core Functionality
- **Post Job Listings**: Add new job opportunities with detailed information
- **Browse Jobs**: View all available job listings in a card-based layout
- **Job Details**: Comprehensive job information display
- **Responsive Design**: Works perfectly on desktop, tablet, and mobile devices

### 🎨 User Interface
- **Modern Design**: Glassmorphism effects with gradient backgrounds
- **Interactive Elements**: Hover animations, smooth transitions, and micro-interactions
- **Professional Styling**: Clean typography and consistent design language
- **Accessibility**: Proper contrast ratios and semantic HTML

### 📱 Pages
1. **Home Page** (`/home`) - Welcome page with feature overview and call-to-action
2. **Add Job** (`/addjob`) - Form to submit new job listings
3. **All Jobs** (`/alljobs`) - Grid view of all available job listings
4. **Success** (`/success`) - Confirmation page after job posting
5. **Contact** (`/contact`) - Contact information and support details

## 🛠️ Technology Stack

- **Backend**: Spring Boot 4.0.6
- **Frontend**: JSP (JavaServer Pages)
- **Styling**: Custom CSS with modern design principles
- **Build Tool**: Maven
- **Server**: Embedded Tomcat
- **Java Version**: 25

## 📋 Prerequisites

- Java 25 or higher
- Maven 3.6+ (or use Maven Wrapper included)
- Modern web browser

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone <repository-url>
cd JobApp
```

### 2. Build the Application
```bash
# Using Maven Wrapper (recommended)
./mvnw clean install

# Or using system Maven
mvn clean install
```

### 3. Run the Application
```bash
# Using Maven Wrapper
./mvnw spring-boot:run

# Or using system Maven
mvn spring-boot:run
```

### 4. Access the Application
Open your browser and navigate to: `http://localhost:8080`

## 📁 Project Structure

```
JobApp/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/oasis/JobApp/
│       │       ├── JobAppApplication.java
│       │       ├── controller/
│       │       │   └── JobController.java
│       │       └── model/
│       │           └── JobPost.java
│       ├── resources/
│       │   ├── static/
│       │   │   └── css/
│       │   │       └── main.css
│       │   └── application.properties
│       └── webapp/
│           ├── home.jsp
│           ├── addjob.jsp
│           ├── alljobs.jsp
│           ├── success.jsp
│           └── contact.jsp
├── pom.xml
├── mvnw
├── mvnw.cmd
├── README.md
└── HELP.md
```

## 🎯 Usage

### Adding a Job
1. Navigate to the home page
2. Click "Add a Job Post"
3. Fill in the job details:
   - Job ID
   - Job Title
   - Job Description
   - Required Experience (years)
   - Tech Stack (multiple selection)
4. Click "Submit Job Post"

### Browsing Jobs
1. Click "All Jobs" in the navigation
2. View job listings in a responsive card grid
3. Each card shows job title, description, experience, and tech stack

### Contact Information
- Visit the Contact page for support details
- Email: contactjobapp@gmail.com

## 🎨 Design System

### Color Palette
- **Primary Gradient**: `#667eea` to `#764ba2`
- **Success**: `#28a745` to `#20c997`
- **Info**: `#17a2b8` to `#20c997`
- **Background**: Gradient from purple to blue
- **Text**: White with opacity variations

### Typography
- **Font Family**: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif
- **Headings**: Various sizes with text shadows
- **Body Text**: Optimized for readability

### Components
- **Navigation**: Sticky header with blur effect
- **Cards**: Glassmorphism design with hover effects
- **Buttons**: Gradient backgrounds with animations
- **Forms**: Styled inputs with focus states
- **Grid System**: Responsive CSS Grid layouts

## 🔧 Configuration

### Application Properties
The application uses default Spring Boot configuration. You can customize:

```properties
# Server port (default: 8080)
server.port=8080

# Application name
spring.application.name=JobApp
```

### Static Resources
- CSS files are served from `/src/main/resources/static/css/`
- Access via: `${pageContext.request.contextPath}/css/main.css`

## 📱 Responsive Design

The application is fully responsive with breakpoints:
- **Desktop**: > 768px
- **Tablet/Mobile**: ≤ 768px

Features include:
- Adaptive navigation
- Responsive grids
- Mobile-optimized forms
- Touch-friendly buttons

## 🎭 Animations & Interactions

### CSS Animations
- **Fade In Up**: Elements animate into view
- **Bounce In**: Icon animations
- **Hover Effects**: Interactive feedback
- **Button Shine**: CTA button effects

### Transitions
- Smooth 0.3s ease transitions
- Transform effects (translate, scale)
- Color and shadow changes

## 🐛 Troubleshooting

### Common Issues

1. **JSP Pages Not Loading**
   - Ensure Tomcat Jasper is included in `pom.xml`
   - Check that JSP files are in `src/main/webapp/`

2. **CSS Not Applying**
   - Verify the CSS link path: `${pageContext.request.contextPath}/css/main.css`
   - Check browser developer tools for 404 errors

3. **Build Failures**
   - Use Maven Wrapper: `./mvnw clean install`
   - Ensure Java 25 is installed and configured

4. **Port Conflicts**
   - Change port in `application.properties`: `server.port=8081`

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Commit changes: `git commit -am 'Add feature'`
4. Push to branch: `git push origin feature-name`
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 📞 Support

For support and questions:
- Email: contactjobapp@gmail.com
- Create an issue in the repository

## 🔄 Future Enhancements

- [ ] User authentication and authorization
- [ ] Job search and filtering
- [ ] Company profiles
- [ ] Application tracking
- [ ] Admin dashboard
- [ ] API endpoints
- [ ] Database integration
- [ ] Email notifications

---

**Built with ❤️ using Spring Boot**
