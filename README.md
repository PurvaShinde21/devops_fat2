# DevOps Docker Assignment

## 1. DevOps Concepts

Here are five important DevOps concepts applied in this assignment:

1. **Continuous Integration / Continuous Deployment (CI/CD)**  
   Automates building, testing, and deploying code quickly and reliably. This assignment demonstrates CI principles by creating a reproducible Docker container and storing the project in GitHub.

2. **Version Control (Git)**  
   Tracks changes in code, allows collaboration, and maintains a history of modifications. Git is used here to commit Dockerfile and README.md, then push to a remote GitHub repository.

3. **Containerization (Docker)**  
   Packages applications and their dependencies into containers, ensuring they run consistently across different environments. This project uses Docker to build a container with basic Linux commands.

4. **Infrastructure as Code (IaC)**  
   Manages infrastructure with code for automation and reproducibility. While not using Terraform here, Dockerfiles act as a simplified form of IaC for container environments.

5. **Monitoring & Logging**  
   Tracks system and application behavior. Though this assignment does not include active monitoring, understanding containers and logging commands prepares for future DevOps monitoring tasks.

---

## 2. How I Completed This Assignment

### Step 1: Create Project Folder
```bash
mkdir ~/devops-docker-task
cd ~/devops-docker-task
pwd
```

### Step 2: Create Dockerfile
```bash
nano Dockerfile
```

**Dockerfile content:**
```dockerfile
FROM alpine:latest

# Install basic Linux tools
RUN apk update && apk add bash curl wget nano tree coreutils

# Create lab directory and set it as working directory
RUN mkdir /lab
WORKDIR /lab

# Create sample files inside /lab
RUN echo "first file content" > fileA.txt && \
    echo "second file content" > fileB.txt

# Demonstrate basic Linux commands
RUN pwd
RUN head -n 1 fileA.txt
RUN tail -n 1 fileB.txt
RUN mv fileA.txt renamed_file.txt
RUN chmod 644 renamed_file.txt
RUN uname -a
RUN hostname

# Keep container interactive
CMD ["bash"]

```

### Step 3: Build Docker Image
```bash
docker build -t basic-linux .
```

### Step 4: Run Docker Container
```bash
docker run -it basic-linux
```

**Inside the container, test Linux commands:**
```bash
ls -la
mkdir /testdir
echo "Hello from Docker container" > /testdir/sample.txt
cat /testdir/sample.txt
bash --version
curl --version
wget --version
nano --version
```

Exit the container:
```bash
exit
```

### Step 5: Initialize Git Repository
```bash
git init
git add Dockerfile README.md
git commit -m "Add Alpine-based Dockerfile and README"
```

### Step 6: Push to GitHub

**GitHub Push**
```bash
git branch -M main
git remote add origin https://github.com/PurvaShinde21/devops_fat2.git
git push -u origin main
```

---

## 3. How This Assignment Helps Learning

- **DevOps Concepts:**  
  Practiced containerization, version control, and a workflow resembling CI/CD pipelines. Dockerfile acts as a simple form of Infrastructure as Code.

- **Linux Skills:**  
  Learned to use basic Linux commands inside a container (`ls`, `mkdir`, `cat`, `echo`) and verify installed utilities (`bash`, `curl`, `wget`, `nano`).

- **Git Skills:**  
  Gained hands-on experience initializing a repository, staging changes, committing, and pushing to GitHub, which reinforces collaboration and version tracking.

- **Docker Skills:**  
  Built and ran Docker images, installed packages inside containers, tested commands, and understood the container lifecycle.

---
## Dockerhub link 
https://hub.docker.com/repository/docker/purvashinde21/basic-linux/general
