**🎉 Wishcard Web App (Docker + NGINX)**

A simple static web application that displays a Wishcard using HTML, served via NGINX inside a Docker container.

📌 Project Overview

This project demonstrates how to:

Serve a static HTML page using NGINX
Containerize the application using Docker
Run the app locally with minimal setup

📁 Project Structure
.
├── Dockerfile
├── index.html
├── style.css        (optional)
├── script.js        (optional)
├── image.jpg        (required - used inside HTML)
└── README.md

⚠️ Important:
Make sure the image used in index.html is present in the same directory as the HTML file.

🐳 Docker Setup

1. Build Docker Image
docker build -t wishcard-app .
2. Run Docker Container
docker run -d -p 8080:80 wishcard-app
3. Access the Application

Open your browser and go to:

http://localhost:8080
⚙️ How It Works
The Docker container uses the official NGINX image

Your static files (index.html, image, etc.) are copied to:

/usr/share/nginx/html
NGINX serves these files on port 80
Docker maps it to localhost:8080
🖼️ Image Handling

If your HTML contains:

<img src="image.jpg" />

Then ensure:

image.jpg is in the same folder as index.html
File name matches exactly (case-sensitive in Linux)
🚀 Use Case

This project is useful for:

Beginners learning Docker
Hosting static websites
Understanding containerized web servers
🔥 Future Improvements
Add Docker Compose support
Add custom NGINX configuration
Deploy to cloud (AWS / Azure / GCP)
Add CI/CD using GitHub Actions



**📜 License**
This project is open-source and free to use.
