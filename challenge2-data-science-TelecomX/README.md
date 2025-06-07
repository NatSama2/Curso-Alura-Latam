# 📊 Análisis de Evasión de Clientes (Churn) - Proyecto de Datos

¡Hola! 👋 Este es un proyecto de análisis de datos realizado como parte de un desafío de ciencia de datos. El objetivo principal fue entender por qué algunos clientes de una empresa de telecomunicaciones se dan de baja (*churn*) y qué patrones o factores se pueden encontrar para prevenirlo.

---

## 🔍 Objetivo del Proyecto

El propósito de este análisis es identificar qué variables influyen en la decisión de un cliente de abandonar el servicio, usando técnicas de análisis exploratorio de datos (EDA). Al comprender estas causas, una empresa puede tomar decisiones más informadas para **retener clientes** y mejorar su servicio.

---

## 🛠️ Herramientas utilizadas

- Python 🐍
- Pandas
- NumPy
- Matplotlib y Seaborn para gráficos 📈
- Jupyter Notebook / Google Colab
- Google Drive (si estás usando Google Colab)

---

## 📁 Estructura del proyecto

```
proyecto-churn/
│
├── churn_analysis.ipynb     <- Notebook con todo el análisis y visualizaciones.
├── README.md                <- Este archivo 📖
├── data/
│   └── churn.json           <- Dataset original en formato JSON.
```

---

## ⚙️ Cómo ejecutar el proyecto

### 🔸 Opción 1: Usando Google Colab (recomendado)

1. Abre [Google Colab](https://colab.research.google.com/).
2. Sube el archivo `churn_analysis.ipynb`.
3. Asegúrate de subir también el archivo `churn.json` en la misma ruta (puedes usar `Archivos` en la barra lateral de Colab).
4. Ejecuta las celdas una por una con `Shift + Enter`.

### 🔸 Opción 2: Usando Jupyter Notebook (local)

1. Asegúrate de tener Python 3 instalado.
2. Instala las librerías necesarias:
   ```bash
   pip install pandas numpy matplotlib seaborn
   ```
3. Abre el notebook con Jupyter:
   ```bash
   jupyter notebook churn_analysis.ipynb
   ```

---

## 🧪 Dataset

El dataset contiene información de clientes como:

- Tipo de contrato
- Método de pago
- Tiempo como cliente
- Servicios contratados
- Si abandonó o no el servicio

Formato: `JSON`, con estructura anidada (se hizo normalización durante el preprocesamiento).

---

## 📈 Principales resultados

- Contratos mensuales tienen más evasión.
- Los clientes nuevos (menos tiempo en la empresa) son más propensos a irse.
- Los pagos automáticos se relacionan con mayor fidelidad.
- Tener más servicios puede reducir la probabilidad de churn.

---

## ✅ Conclusión

Este análisis ayuda a comprender el comportamiento de los clientes y proporciona insights que pueden ayudar a **reducir la tasa de abandono**. Además, refuerza el uso de herramientas de análisis de datos para tomar decisiones más estratégicas.

---

## 💡 Recomendaciones

- Incentivar contratos anuales.
- Mejorar la experiencia de los nuevos clientes.
- Promover pagos automáticos.
- Agregar servicios de valor para aumentar la satisfacción.

---

## 🧠 Autor

**Giselle Cifuentes**  
Bootcamp de Ciencia de Datos - Proyecto Final 💻

---

## 📬 Contacto

Si tienes dudas o sugerencias, ¡no dudes en escribirme!  
✉️ Vet.Nat.C@gmail.com

---
