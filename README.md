# Quantum Fourier Transform (QFT) Project

This repository implements and compares the Quantum Fourier Transform (QFT) and the classical Fast Fourier Transform (FFT) for analyzing simulated EEG signals. The project is structured for reproducibility and ease of use, using Python, Jupyter Notebook, and a `Makefile` for setup.

## Overview

### Purpose
The goal is to explore how the QFT, implemented on quantum simulators or real quantum hardware, can offer computational advantages over the FFT for real-time EEG signal analysis. The project specifically focuses on identifying dominant Alpha (8–13 Hz) and Beta (13–30 Hz) brainwave frequencies from simulated data.

### Key Features
- **EEG Signal Simulation:** Generate synthetic EEG signals combining Alpha and Beta frequency bands with random noise.
- **Fourier Transform Comparison:** Implement both FFT (classical) and QFT (quantum) for signal analysis.
- **Performance Metrics:** Compare runtime and precision between FFT and QFT.
- **Visualization:** Generate frequency plots for easy comparison.
- **Documentation:** The included `Proyecto_Final.pdf` explains the methodology, results, and potential applications.

---

## Repository Structure
```
.
├── documentation
│   └── Proyecto_Final.pdf # Reporte del proyecto detallado
├── env.example # Ejemplo de como configurar el .env
├── Makefile # Archivo para automatizar comandos
├── notebooks
│   └── QuantumFourierTransform.ipynb # Notebook con los experimientos
├── README.md
└── requirements.txt # Dependencias de software

3 directories, 5 files
```

---

## Getting Started

### Prerequisites
- **Python 3.8+**
- **pip** for dependency management

### Setup Instructions

To set up the environment, install dependencies, and launch the project:
1. Clone the repository:
```bash
git clone https://github.com/TheTechSensei/final-project-QFT.git
cd final-project-QFT
```
2. Run the setup using Makefile:
```bash
make setup
```

3. Launch the Jupyter Notebook to explore the project or go to notebooks and run each individual cell:
```bash
jupyter notebook notebooks/QuantumFourierTransform.ipynb
```
