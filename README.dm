# Auditoría de Red: Análisis de Vulnerabilidades en donut.bar

Este proyecto documenta un escaneo profundo de red (Intense Scan) para identificar la superficie de ataque, servicios expuestos y topología del dominio **donut.bar**.

### 1. Configuración y Objetivos del Escaneo
Se utilizó **Zenmap** para realizar un reconocimiento detallado con los siguientes objetivos técnicos:
* Identificar la **Dirección IP** y el **Sistema Operativo**.
* Detectar el número de **puertos abiertos**.
* Analizar la **topología de red** (ruta hacia el host).

![Configuración del Target](imagenes/foto1.png)

### 2. Ejecución y Resultados Técnicos (Nmap Output)
El escaneo reveló información crítica sobre la infraestructura del servidor:

* **Dirección IPv4:** 45.33.32.156

![Resultado General del Escaneo](imagenes/foto8.png)


* **Sistema Operativo:** Ubuntu Linux (deducido por las versiones de servicios).

![Resultado General del Escaneo](imagenes/foto2.png)

* **Estado del Host:** Activo (Up) con una latencia de 0.22s.

![Resultado General del Escaneo](imagenes/foto3.png)

### 3. Análisis de Puertos y Servicios
Se identificaron los puertos abiertos y sus versiones, permitiendo evaluar qué servicios son más susceptibles a recibir ataques:

* **Puertos Abiertos:**
 El sistema reporta **5 puertos abiertos** activos.
* **Vulnerabilidad Potencial:** Se detectaron servicios como **SSH (OpenSSH 6.6.1p1)** y **HTTP (Apache)**, los cuales deben ser monitoreados para asegurar que no tengan CVEs conocidos.

![Detalles del Host](imagenes/captura6.png)

### 4. Análisis de Topología
A través del gráfico de topología, se visualizó la ruta de red desde el localhost hasta el destino. El host aparece en **color amarillo**, lo que en Zenmap indica que tiene **entre 3 y 6 puertos abiertos**, confirmando los hallazgos anteriores.

![Topología de Red](imagenes/captura7.png)

---

## Conclusión Técnica

La auditoría sobre **donut.bar** permitió determinar que el servidor es una instancia de **Linux (Ubuntu)** con una superficie de exposición moderada. 

* **Puntos Críticos:** La presencia de puertos abiertos para administración remota (SSH) y servicios web (HTTP) requiere una política estricta de parches y firewalls.
* **Resultado del Reconocimiento:** Se cumplieron todos los objetivos de identificación (IP, SO, Puertos y Ruta), proporcionando al equipo de seguridad una base sólida para realizar un análisis de vulnerabilidades más profundo o una prueba de penetración.

---
**Proyecto finalizado como parte del entrenamiento en monitoreo de seguridad y respuesta a incidentes.**