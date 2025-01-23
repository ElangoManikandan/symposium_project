# Symposium Registration Website

This project is a web-based platform designed for managing registrations, attendance, and user profiles for a symposium event. The website provides separate access for users and admins, featuring a secure login system and dynamic functionalities.

## Features

### User Features
- **Registration**: Users can register for the symposium and create a profile.
- **QR Code Generation**: A unique QR code is generated for each user after registration.
- **Login**: Secure login with session-based authentication.
- **Profile Management**: View and manage user profiles.
- **Event Registration**: Users can register for various symposium events.

### Admin Features
- **Admin Login**: Secure admin login with role-based access.
- **Admin Dashboard**: Manage attendance, view participant lists, and access event details.
- **Attendance Management**: Mark participant attendance for events.
- **Profile Management**: Manage admin profiles.

## Technologies Used

### Frontend
- **HTML5**: Structure of the website.
- **CSS3**: Styling and layout.
- **JavaScript**: Client-side interactivity.

### Backend
- **Node.js**: Server-side development.
- **Express.js**: Backend framework for routing and API development.

### Database
- **MySQL**: Database for storing user, event, registration, and attendance data.

### Additional Libraries and Tools
- **bcrypt**: Password hashing for secure storage.
- **dotenv**: Environment variable management.
- **express-session**: Session management.
- **cors**: Handling cross-origin requests.
- **QRCode**: Generating QR codes.

## Database Structure

### Tables
1. **users**: Stores user details.
2. **events**: Stores event information.
3. **registrations**: Tracks event registrations.
4. **attendance**: Tracks participant attendance for events.

### Example Schema
```sql
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    college VARCHAR(100),
    year INT,
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    accommodation ENUM('yes', 'no'),
    role ENUM('user', 'admin')
);

CREATE TABLE events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    type ENUM('technical', 'non-technical', 'workshop'),
    venue VARCHAR(100),
    prize VARCHAR(100),
    date DATE,
    time TIME
);

CREATE TABLE registrations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    event_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (event_id) REFERENCES events(id)
);

CREATE TABLE attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT NOT NULL,
    user_id INT NOT NULL,
    admin_id INT NOT NULL,
    attendance_status ENUM('present', 'absent') NOT NULL,
    marked_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (event_id) REFERENCES events(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (admin_id) REFERENCES users(id)
);
```

## Environment Variables
Set up the `.env` file with the following variables:
```
PORT=5000
DB_HOST=localhost
DB_USER=root
DB_PASS=1234
DB_NAME=symposium_db2
SESSION_SECRET=your_session_secret
ADMIN_KEY=your_admin_key
```

## Project Structure
```
project-directory/
├── public/          # Static files (HTML, CSS, JS)
├── server.js        # Main server file
├── .env             # Environment variables
├── package.json     # Project metadata and dependencies
└── README.md        # Project documentation
```

## Installation and Setup

1. Clone the repository:
   ```bash
   git clone <repository_url>
   ```

2. Navigate to the project directory:
   ```bash
   cd project-directory
   ```

3. Install dependencies:
   ```bash
   npm install
   ```

4. Set up the database:
   - Create a database named `symposium_db2`.
   - Run the provided SQL scripts to create tables.

5. Configure environment variables:
   - Create a `.env` file in the root directory and add the required variables.

6. Start the server:
   ```bash
   npm start
   ```

7. Access the website:
   - Open a browser and navigate to `http://localhost:5000`.

## API Endpoints

### Authentication
- **POST** `/register`: Register a new user.
- **POST** `/login`: Log in a user.
- **GET** `/check-authentication`: Check user authentication status.
- **POST** `/forgot-password`: Validate email for password reset.
- **POST** `/reset-password`: Reset a user's password.

### Profile
- **GET** `/profile`: Serve the user's profile page.
- **GET** `/get-profile`: Retrieve user profile details.
- **GET** `/get-admin-profile`: Retrieve admin profile details.

### Attendance and Events
- **POST** `/event/register`: Register for an event.
- **GET** `/admin/attendance`: View attendance details (admin-only).

## Future Enhancements
- **Email Notifications**: Send email confirmations for registrations and updates.
- **Dynamic Dashboard**: Real-time statistics and updates for admins.
- **Mobile Optimization**: Responsive design for mobile users.
- **Feedback System**: Collect feedback from participants.

## License
This project is licensed under the MIT License. See the `LICENSE` file for more details.

