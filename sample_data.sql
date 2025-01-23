-- Insert sample data into `users` table
INSERT INTO users (name, college, year, email, password, accommodation, role) VALUES
('Alice Johnson', 'Tech University', 2, 'alice@example.com', 'password123', 'yes', 'user'),
('Bob Smith', 'Science College', 3, 'bob@example.com', 'securepass456', 'no', 'user'),
('Charlie Brown', 'Engineering Academy', 4, 'charlie@example.com', 'hashme789', 'yes', 'user'),
('Diana Prince', 'Wonder College', 1, 'diana@example.com', 'dianaSecure!', 'no', 'user'),
('Admin User', 'Tech University', 5, 'admin@example.com', 'adminpass@2023', 'no', 'admin');

INSERT INTO events (name, type, venue, prize, date, time)
VALUES
('Codeathon', 'technical', 'Main Hall', 'First Prize: ₹5000', '2025-02-15', '10:00:00'),
('Debug Challenge', 'technical', 'Room 101', 'First Prize: ₹4000', '2025-02-16', '11:00:00'),
('Tech Quiz', 'technical', 'Room 102', 'First Prize: ₹3000', '2025-02-17', '09:30:00'),
('AI Hackathon', 'technical', 'Innovation Lab', 'First Prize: ₹6000', '2025-02-18', '12:00:00'),
('Treasure Hunt', 'non-technical', 'Campus Grounds', 'First Prize: ₹2000', '2025-02-19', '14:00:00'),
('Quiz Mania', 'non-technical', 'Auditorium', 'First Prize: ₹1500', '2025-02-20', '15:00:00'),
('Photography Contest', 'non-technical', 'Photography Studio', 'First Prize: ₹2500', '2025-02-21', '10:00:00'),
('Debate Competition', 'non-technical', 'Room 201', 'First Prize: ₹3000', '2025-02-22', '16:00:00'),
('Machine Learning Basics', 'workshop', 'Lab 1', 'No prize', '2025-02-23', '09:00:00'),
('Web Development', 'workshop', 'Lab 2', 'No prize', '2025-02-24', '10:30:00'),
('Data Science Essentials', 'workshop', 'Lab 3', 'No prize', '2025-02-25', '11:00:00'),
('Cyber Security 101', 'workshop', 'Lab 4', 'No prize', '2025-02-26', '13:00:00');
-- Insert sample data into `registrations` table
INSERT INTO registrations (user_id, event_id) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(1, 4),
(3, 5);

-- Insert sample data into `attendance` table
INSERT INTO attendance (event_id, user_id, admin_id, attendance_status) VALUES
(1, 1, 5, 'present'),
(1, 2, 5, 'absent'),
(2, 3, 5, 'present'),
(3, 4, 5, 'present'),
(4, 1, 5, 'present'),
(5, 3, 5, 'absent');
