## 🕸️ Docker Image Generator – *Spider-Man: Multiverse Page* 🕷️

The project proposes to create a docker image for a web page and as I liked Michele Ambrosio's work in page Multiverse. I took it as a basis.

This project clones a static HTML project and builds a Docker image that runs a web page inspired by the **Spider-Man Multiverse** concept. Perfect for learning how to automate Docker builds from cloned repositories.

---

### 🛠️ Steps to Run

#### 📥 1. Clone the repository

```bash
git clone https://github.com/luizpkey/docker_image_generator_to_spider_man_multiverses_dio.git
cd docker_image_generator_to_spider_man_multiverses_dio
```

---

#### 🔧 2. Give execution permission and run the build script

```bash
chmod +x build.sh && ./build.sh
```

This will:

* Clone the source HTML project
* Generate a `Dockerfile`
* Build a Docker image named `multiversepage`

---

#### 🐳 3. Run the Docker container

```bash
docker run -d -p 8080:80 multiversepage
```

> This will expose the static site at `http://localhost:8080`.

<p align="center">
  <img src="https://github.com/luizpkey/docker_image_generator_to_spider_man_multiverses_dio/blob/main/assets/CreateDockerContainer.png" width="800" height="600" alt="Docker container created">
</p>

---

#### 🌐 4. Open the page in your browser

Go to:

```
http://localhost:8080
```

You should see your multiverse-themed web page running from a container.

<p align="center">
  <img src="https://github.com/luizpkey/docker_image_generator_to_spider_man_multiverses_dio/blob/main/assets/PageInContainerRun.png" width="800" height="600" alt="Page running in Docker container">
</p>

---

### 💡 Notes

* Docker and Git must be installed and working properly (WSL2 + Docker Desktop on Windows).
* If Docker fails with a builder warning, consider installing Docker Buildx.

---

Would you like me to commit this directly to your repo as a pull request or generate a raw Markdown file (`README.md`) you can paste into your project?
