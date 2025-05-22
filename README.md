
This Project aims to develop knowlegdes about Machine Learning flow from model development to its deployment by introducing Mlflow framework in order to track metrics, experiments and else.

We leverage a previous project where classification models were built, benchmarked and evaluated then the best had been deployed. You could hit [here](https://github.com/ONOKANA8/OC_Data_Scientist_P7) to read the related and original Academic project.

As you can see, in the present repo, we introduce advanced programming techniques like OOP (Object-Oriented Programming) that simply our python codes.


Below the life cycle of Machine Learning Project:

![ML life Cycle](assets/images/0_3I4P4pkL1xySQS9B.webp)
[source medium](https://medium.com/comet-ml/organizing-machine-learning-projects-project-management-guidelines-2d2b85651bbd)


## Features

- **Experiment Tracking**: Use MLflow to log and compare experiments, parameters, and metrics.
- **Model Management**: Register, store, and retrieve models using MLflow's model registry.
- **API Deployment**: Serve the best model through a RESTful API built with FastAPI.
- **Dashboard**: Visualize predictions and metrics using a Streamlit dashboard.
- **Containerization**: Run the entire stack (API + dashboard) in Docker for easy deployment and reproducibility.
- **Object-Oriented Programming**: Modular, maintainable codebase leveraging OOP principles.

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/get-started)
- [Git](https://git-scm.com/)

### Clone the Repository

```bash
git clone https://github.com/donat-konan33/DashboardFailureToPay.git
cd DashboardFailureToPay
```


### Install Dependencies

To get started, install Poetry (a Python dependency manager):

```bash
pipx install poetry
```

Then, install the project dependencies:

```bash
poetry install
```

If you don't have pipx, refer to the [pipx installation guide](https://pipx.pypa.io/stable/installation/).

### Build and Run with Docker

Start the application stack using Docker Compose:

```bash
docker compose up --build
```

After building and launching:
- FastAPI will be accessible at `http://localhost:8001`
- The Streamlit dashboard will be accessible at `http://localhost:8501`

**Note:** Make sure these ports are available on your system.

### Access MLflow UI

If enabled in your Docker Compose configuration, the MLflow tracking UI will be available at `http://localhost:5000`.

## Project Structure

```
.
├── app/                # FastAPI app and Streamlit dashboard
├── assets/
├── mlflow/             # MLflow tracking and model registry
├── models/             # Trained models and scripts
├── data/               # Training and test datasets
├── fichier_api/        # Data for simulating API requests
├── notebooks/
├── Dockerfile
├── docker-compose.yml
├── poetry.lock
├── pyproject.toml
└── README.md
```

## Usage

- Train models and log experiments with MLflow (*feature coming soon*)
- Register the best model in the MLflow model registry (*feature coming soon*)
- Serve predictions via the FastAPI endpoint
- Visualize results and interact with the model using the Streamlit dashboard

## References

- [MLflow Documentation](https://mlflow.org/docs/latest/index.html)
- [FastAPI Documentation](https://fastapi.tiangolo.com/)
- [Streamlit Documentation](https://docs.streamlit.io/)
