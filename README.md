<div align="center">

# 🚀 INFORME DEL TRABAJO FINAL DEVOPS

### Aplicación FastAPI · Automatización CI/CD · Docker

![GitHub](https://img.shields.io/badge/GitHub-Repositorio-181717?style=for-the-badge&logo=github&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-CI%2FCD-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-v2-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![FastAPI](https://img.shields.io/badge/FastAPI-API-009688?style=for-the-badge&logo=fastapi&logoColor=white)
![Estado](https://img.shields.io/badge/Estado-HEALTHY-2EA44F?style=for-the-badge)

**Grupo 5**  
**Martín Balarezo · Fernando Cuenca**

`Curso de Profesionalización en DevOps`

</div>

---


## 🧭 Navegación del informe

| Bloque | Secciones |
|---|---|
| 📌 **Planificación** | [1. Datos del grupo](#-1-datos-del-grupo) · [2. Objetivos](#-2-objetivos) · [3. Estructura](#️-3-estructura-del-proyecto) |
| 🌿 **Versionamiento** | [4. Git y Git Flow](#-4-configuración-de-git-y-git-flow) · [5. Commits](#-5-agregación-de-contenido-e-historial-de-commits) · [6. Releases](#️-6-creación-del-versionamiento-con-release) |
| ☁️ **Automatización** | [7. GitHub](#️-7-publicación-en-github) · [8. GitHub Actions](#️-8-configuración-de-github-actions) · [9. Docker Hub](#-9-publicación-en-docker-hub) |
| 🐳 **Despliegue** | [10. Ejecución](#-10-ejecución-del-contenedor) · [11. Imagen](#-11-verificación-de-la-imagen) · [12. Contenedor](#️-12-verificación-del-contenedor) |
| 🧪 **Validación** | [13. Pruebas](#-13-pruebas-de-funcionamiento) · [14. Resultados](#-14-resultados) · [15. Conclusiones](#-15-conclusiones) |


## ⚡ Resumen ejecutivo

| Elemento clave | Resultado |
|---|---|
| 🧩 Aplicación | FastAPI |
| 🌿 Estrategia Git | Git Flow con `main`, `develop`, `feature` y `release` |
| ⚙️ Automatización | GitHub Actions |
| 🐳 Imagen final | `martinb1992/proyecto-final-devops:v2` |
| 🔌 Puertos | Host `8005` → Contenedor `8000` |
| ❤️ Estado final | `healthy` |
| 🌐 Acceso | `http://localhost:8005` |

---

## 👥 1. Datos del grupo

| Dato | Información |
|---|---|
| Grupo | Grupo 5 |
| Integrantes | Martín Balarezo y Fernando Cuenca |
| Curso | Curso de Profesionalización en DevOps |
| Sistema operativo | Zorin OS 18.1 |
| Repositorio GitHub | `https://github.com/TinchoXD/proyecto-final-devops` |
| Usuario de Docker Hub | `martinb1992` |
| Imagen final validada | `martinb1992/proyecto-final-devops:v2` |
| Puerto del host | `8005` |
| Puerto interno del contenedor | `8000` |

---

## 🎯 2. Objetivos

### 🎯 2.1 Objetivo general


Implementar un flujo básico de DevOps para una aplicación web desarrollada con FastAPI, utilizando Git, Git Flow, GitHub, GitHub Actions, Docker y Docker Hub.

### ✅ 2.2 Objetivos específicos

- Crear y organizar la estructura del proyecto.
- Gestionar el código fuente mediante Git y Git Flow.
- Utilizar las ramas `main`, `develop`, `feature` y `release`.
- Construir una imagen Docker mediante un `Dockerfile`.
- Automatizar la publicación de la imagen con GitHub Actions.
- Publicar versiones etiquetadas en Docker Hub.
- Ejecutar el contenedor con variables de entorno.
- Verificar el estado del contenedor y los endpoints de la aplicación.

---

## 🗂️ 3. Estructura del proyecto

El proyecto fue creado en:

```text
/home/netadmin/Documentos/proyecto-final-devops
```

La estructura inicial se generó mediante:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ mkdir -p app/templates

┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ touch app/main.py \
app/templates/index.html \
requirements.txt \
Dockerfile \
.dockerignore
```

La estructura final del repositorio quedó organizada de la siguiente forma:

```text
📁 proyecto-final-devops/
├── 📁 .github/
│   └── 📁 workflows/
│       └── 📄 docker-publish.yml
├── 📁 app/
│   ├── 📄 main.py
│   └── 📁 templates/
│       └── 📄 index.html
├── 📄 .dockerignore
├── 📄 Dockerfile
├── 📄 INFORME.md
├── 📄 README.md
└── 📄 requirements.txt
```

---

Los archivos principales cumplen las siguientes funciones:

| Archivo | Función |
|---|---|
| `app/main.py` | Aplicación principal desarrollada con FastAPI |
| `app/templates/index.html` | Interfaz web |
| `requirements.txt` | Dependencias de Python |
| `Dockerfile` | Construcción y configuración de la imagen |
| `.dockerignore` | Exclusión de archivos durante la construcción |
| `.github/workflows/docker-publish.yml` | Automatización de la publicación en Docker Hub |
| `INFORME.md` | Documentación técnica del proyecto |

---

## 🌿 4. Configuración de Git y Git Flow

### 🔎 4.1 Verificación de herramientas

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git --version
git version 2.43.0

┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git flow version
1.12.3 (AVH Edition)
```

### 🪪 4.2 Configuración de identidad

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git config --global user.name "Martín Balarezo"

┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git config --global user.email "martinbalarezo92@hotmail.com"
```

### 📦 4.3 Inicialización del repositorio

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git init

Inicializado repositorio Git vacío en
/home/netadmin/Documentos/proyecto-final-devops/.git/
```

La rama inicial fue renombrada como `main`:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git branch -M main
```

Se creó el commit inicial:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git commit --allow-empty -m "chore: inicializar repositorio"

[main (commit-raíz) 97e70fc] chore: inicializar repositorio
```

### 🌱 4.4 Inicialización de Git Flow

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git flow init
```

Se configuraron los siguientes valores:

| Configuración | Valor |
|---|---|
| Rama de producción | `main` |
| Rama de desarrollo | `develop` |
| Funcionalidades | `feature/` |
| Correcciones | `bugfix/` |
| Versiones | `release/` |
| Correcciones urgentes | `hotfix/` |
| Soporte | `support/` |
| Prefijo de etiquetas | Sin prefijo |

La verificación de ramas mostró:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git branch

* develop
  main
```

---

## 🧾 5. Agregación de contenido e historial de commits

Los archivos de la aplicación fueron incorporados mediante una rama de funcionalidad.

### 🌿 5.1 Creación de la rama `feature`

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git flow feature start aplicacion

Cambiado a nueva rama 'feature/aplicacion'
```

### ➕ 5.2 Agregación de archivos

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git add .
```

El estado mostró los siguientes archivos nuevos:

```text
.dockerignore
Dockerfile
app/main.py
app/templates/index.html
requirements.txt
```

### 💾 5.3 Confirmación de cambios

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git commit -m "feat: agregar aplicación y configuración inicial Docker"

[feature/aplicacion 11cde54] feat: agregar aplicación y configuración inicial Docker
 5 files changed, 278 insertions(+)
```

### 🔀 5.4 Finalización de la funcionalidad

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git flow feature finish aplicacion
```

Git Flow realizó la integración en `develop`, eliminó la rama `feature/aplicacion` y dejó limpio el árbol de trabajo.

El historial inicial fue:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git log --oneline --graph --decorate --all

* 11cde54 (HEAD -> develop) feat: agregar aplicación y configuración inicial Docker
* 97e70fc (main) chore: inicializar repositorio
```

---

## 🏷️ 6. Creación del versionamiento con `release`

### 1️⃣ 6.1 Versión `v1`

La primera versión estable fue creada mediante:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git flow release start v1
```

La rama creada fue:

```text
release/v1
```

La release se finalizó con:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git flow release finish -m "Versión v1" v1
```

Git Flow realizó automáticamente:

- Merge de `release/v1` hacia `main`.
- Creación de la etiqueta `v1`.
- Integración de la versión en `develop`.
- Eliminación de la rama `release/v1`.

### 2️⃣ 6.2 Versión `v2`

Durante las pruebas se detectó que la versión inicial ejecutaba Uvicorn en el puerto interno `8005`, mientras que el mapeo requerido era `8005:8000`.

La corrección dejó el `Dockerfile` con:

```dockerfile
ENV APP_PORT=8000
EXPOSE 8000

HEALTHCHECK --interval=30s --timeout=5s --retries=3 --start-period=10s \
    CMD python -c "import urllib.request; urllib.request.urlopen('http://localhost:8000/health')"

CMD ["sh", "-c", "uvicorn main:app --host 0.0.0.0 --port ${APP_PORT}"]
```

La corrección fue publicada mediante una segunda release:

```text
release/v2
```

La etiqueta `v2` representa la versión final validada del proyecto.

> [!TIP]
> La versión `v2` es la referencia principal para las pruebas finales porque corrige el puerto interno del contenedor.

Se conservaron únicamente dos etiquetas:

```text
v1
v2
```

---

## ☁️ 7. Publicación en GitHub

El repositorio remoto fue configurado mediante:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git remote add origin https://github.com/TinchoXD/proyecto-final-devops.git
```

La configuración quedó así:

```text
origin  https://github.com/TinchoXD/proyecto-final-devops.git (fetch)
origin  https://github.com/TinchoXD/proyecto-final-devops.git (push)
```

El contenido remoto inicial fue integrado con:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git fetch origin

┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git merge origin/main --allow-unrelated-histories \
-m "chore: integrar contenido inicial de GitHub"
```

Posteriormente, se publicaron las ramas:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git push -u origin main

┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git push -u origin develop
```

También se publicaron las etiquetas:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git push origin v1

┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ git push origin v2
```

El repositorio quedó disponible en:

```text
https://github.com/TinchoXD/proyecto-final-devops
```

---

## ⚙️ 8. Configuración de GitHub Actions

Se creó el archivo:

```text
.github/workflows/docker-publish.yml
```

El workflow fue configurado para construir y publicar una imagen por cada etiqueta Git con formato `v*`.

```yaml
name: Build and Push Docker Image

on:
  push:
    tags:
      - "v*"
  workflow_dispatch:

permissions:
  contents: read

env:
  IMAGE_NAME: martinb1992/proyecto-final-devops

jobs:
  build-and-push:
    name: Construir y publicar imagen
    runs-on: ubuntu-latest

    steps:
      - name: Obtener código del repositorio
        uses: actions/checkout@v6

      - name: Configurar Docker Buildx
        uses: docker/setup-buildx-action@v4

      - name: Iniciar sesión en Docker Hub
        uses: docker/login-action@v4
        with:
          username: ${{ vars.DOCKERHUB_USERNAME }}
          password: ${{ secrets.DOCKERHUB_TOKEN }}

      - name: Construir y publicar la imagen
        uses: docker/build-push-action@v7
        with:
          context: .
          file: ./Dockerfile
          platforms: linux/amd64
          push: true
          tags: ${{ env.IMAGE_NAME }}:${{ github.ref_name }}
```

En GitHub se configuraron:

| Tipo | Nombre | Finalidad |
|---|---|---|
| Variable | `DOCKERHUB_USERNAME` | Usuario de Docker Hub |
| Secreto | `DOCKERHUB_TOKEN` | Token de autenticación |

El workflow automatiza las siguientes tareas:

1. Descarga el código del repositorio.
2. Configura Docker Buildx.
3. Inicia sesión en Docker Hub.
4. Construye la imagen con el `Dockerfile`.
5. Publica la imagen con la misma etiqueta del repositorio Git.

---

## 🐳 9. Publicación en Docker Hub

La primera versión fue publicada como:

```text
martinb1992/devops-final-project:v1
```

Después de corregir el puerto interno, la versión final fue publicada como:

```text
martinb1992/proyecto-final-devops:v2
```

La versión `v2` fue utilizada para las pruebas definitivas.

### 📸 Evidencia de publicación

> Insertar en el repositorio la captura de Docker Hub con el nombre:

```text
evidencias/dockerhub-v2.png
```

En el informe se incorpora mediante:

```markdown
![Imagen v2 publicada en Docker Hub](evidencias/dockerhub-v2.png)
```

![Imagen v2 publicada en Docker Hub](evidencias/dockerhub-v2.png)

---

## 🚀 10. Ejecución del contenedor

La imagen final fue descargada mediante:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ docker pull martinb1992/proyecto-final-devops:v2
```

El contenedor se ejecutó con:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ docker run -d \
  --name devops-final-project-grupo5 \
  -p 8005:8000 \
  -e GROUP_NAME="Grupo 5" \
  -e GROUP_MEMBERS="Martín Balarezo, Fernando Cuenca" \
  -e COURSE_NAME="Curso de Profesionalización en DevOps" \
  martinb1992/proyecto-final-devops:v2
```

La configuración utilizada fue:

| Parámetro | Valor |
|---|---|
| Nombre del contenedor | `devops-final-project-grupo5` |
| Imagen | `martinb1992/proyecto-final-devops:v2` |
| Puerto del host | `8005` |
| Puerto interno | `8000` |
| Mapeo | `8005:8000` |
| Grupo | `Grupo 5` |
| Integrantes | Martín Balarezo y Fernando Cuenca |

La aplicación quedó disponible en:

> [!NOTE]
> 🌐 **URL local:** `http://localhost:8005`

---

## 🔍 11. Verificación de la imagen

Se consultaron las imágenes disponibles:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ docker image ls

IMAGE                                  ID             DISK USAGE   CONTENT SIZE
hello-world:latest                     96498ffd522e       25.9kB         9.49kB
martinb1992/devops-final-project:v1    a62e2e31cc70        233MB         55.5MB
martinb1992/proyecto-final-devops:v2   6262bd0fddd8        233MB         55.5MB
```

La imagen final fue filtrada mediante:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ docker image ls | grep proyecto-final-devops:v2

martinb1992/proyecto-final-devops:v2   6262bd0fddd8   233MB   55.5MB
```

| Elemento | Resultado |
|---|---|
| Repositorio | `martinb1992/proyecto-final-devops` |
| Etiqueta | `v2` |
| ID | `6262bd0fddd8` |
| Uso en disco | `233 MB` |
| Tamaño del contenido | `55.5 MB` |

---

## ❤️ 12. Verificación del contenedor

Se verificó el contenedor mediante:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ docker ps -a

CONTAINER ID   IMAGE                                  STATUS                   PORTS                                         NAMES
81cc75a3a1ab   martinb1992/proyecto-final-devops:v2   Up 3 minutes (healthy)   0.0.0.0:8005->8000/tcp, [::]:8005->8000/tcp   devops-final-project-grupo5
```

El filtro por nombre confirmó la ejecución:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ docker ps -a --filter "name=devops-final-project"

CONTAINER ID   IMAGE                                  STATUS                   PORTS                                         NAMES
81cc75a3a1ab   martinb1992/proyecto-final-devops:v2   Up 3 minutes (healthy)   0.0.0.0:8005->8000/tcp, [::]:8005->8000/tcp   devops-final-project-grupo5
```


> El resultado esperado es `healthy`. Esto confirma que el `HEALTHCHECK` de Docker puede acceder al endpoint `/health`.

El estado de salud se consultó con el nombre completo del contenedor:

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ docker inspect --format='{{.State.Health.Status}}' \
devops-final-project-grupo5

healthy
```

| Elemento | Resultado |
|---|---|
| Nombre | `devops-final-project-grupo5` |
| Estado | `healthy` |
| Puerto del host | `8005` |
| Puerto interno | `8000` |
| Mapeo | `8005:8000` |

---

## 🧪 13. Pruebas de funcionamiento

### 💚 13.1 Endpoint `/health`

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ curl http://localhost:8005/health
```

Respuesta:

```json
{
  "status": "healthy",
  "service": "devops-final-project",
  "group": "Grupo 5",
  "timestamp": "2026-07-13T23:26:30.495541"
}
```

### ℹ️ 13.2 Endpoint `/info`

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ curl http://localhost:8005/info
```

Respuesta:

```json
{
  "application": "DevOps Final Project API",
  "version": "1.0.0",
  "environment": "production",
  "group": {
    "name": "Grupo 5",
    "members": "Martín Balarezo, Fernando Cuenca"
  },
  "system": {
    "hostname": "81cc75a3a1ab",
    "platform": "Linux",
    "python_version": "3.12.13"
  }
}
```

### 📈 13.3 Endpoint `/metrics`

```console
┌──(netadmin㉿devops-mv)-[~/Documentos/proyecto-final-devops]
└─$ curl http://localhost:8005/metrics
```

Respuesta:

```json
{
  "service": "devops-final-project",
  "uptime_seconds": 590.07,
  "status": "running",
  "group": "Grupo 5"
}
```

### 🖼️ 13.4 Evidencia de la página principal

- La URL utilizada.

![Imagen v2 publicada en Docker Hub](https://raw.githubusercontent.com/TinchoXD/proyecto-final-devops/develop/app/img_informe/url_utilizada.png)

- La página completa.

![Imagen v2 publicada en Docker Hub](https://raw.githubusercontent.com/TinchoXD/proyecto-final-devops/develop/app/img_informe/pagina_completa.png)

- El nombre del grupo.
- Los integrantes.
- El nombre del curso.

![Imagen v2 publicada en Docker Hub](https://raw.githubusercontent.com/TinchoXD/proyecto-final-devops/develop/app/img_informe/nombre_grupo_01.png)

![Imagen v2 publicada en Docker Hub](https://raw.githubusercontent.com/TinchoXD/proyecto-final-devops/develop/app/img_informe/nombre_grupo_02.png)



---

## 📊 14. Resultados

Las pruebas realizadas permitieron obtener los siguientes resultados:

| Comprobación | Resultado |
|---|---|
| Repositorio Git inicializado | Correcto |
| Git Flow configurado | Correcto |
| Ramas `main` y `develop` | Disponibles |
| Rama feature utilizada | `feature/aplicacion` |
| Releases creadas | `v1` y `v2` |
| Repositorio publicado en GitHub | Correcto |
| Workflow de GitHub Actions | Configurado |
| Imagen publicada en Docker Hub | Correcto |
| Imagen final | `martinb1992/proyecto-final-devops:v2` |
| Contenedor iniciado | Correcto |
| Estado del contenedor | `healthy` |
| Mapeo de puertos | `8005:8000` |
| Variables del grupo | Correctas |
| Endpoint `/health` | Correcto |
| Endpoint `/info` | Correcto |
| Endpoint `/metrics` | Correcto |

La versión `v2` corrigió la configuración del puerto interno y permitió acceder a la aplicación desde el equipo host mediante `http://localhost:8005`.

---

## 🏁 15. Conclusiones

### Evidencia de publicación en Docker Hub

La siguiente captura demuestra que la imagen `v2` fue publicada correctamente:

El trabajo permitió implementar un flujo completo de desarrollo, versionamiento, automatización y despliegue de una aplicación web.

Git y Git Flow facilitaron la organización del historial mediante ramas destinadas al desarrollo, funcionalidades y versiones. La utilización de las ramas `main` y `develop` permitió separar el código estable del código en proceso de integración.

Docker permitió empaquetar la aplicación y sus dependencias en una imagen reproducible. La configuración final utilizó el puerto `8000` dentro del contenedor y el puerto `8005` en el equipo host, mediante el mapeo `8005:8000`.

GitHub Actions automatizó la construcción y publicación de las imágenes en Docker Hub. La etiqueta `v1` correspondió a la primera entrega, mientras que `v2` incorporó la corrección definitiva del puerto interno.

Las verificaciones realizadas confirmaron que el contenedor alcanzó el estado `healthy`, que las variables del Grupo 5 fueron cargadas correctamente y que los endpoints `/health`, `/info` y `/metrics` respondieron sin errores.

En conclusión, se logró integrar correctamente Git, Git Flow, GitHub, GitHub Actions, Docker y Docker Hub dentro de un flujo de trabajo DevOps funcional y verificable.


