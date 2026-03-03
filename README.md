# Project1-AzureServices

## Overview

This project demonstrates an end-to-end cloud data engineering architecture built using Microsoft Azure services. It implements a scalable and secure data pipeline that ingests raw data, transforms it through layered processing, and delivers business insights using dashboards.

The architecture follows the Medallion (Bronze–Silver–Gold) pattern to ensure structured data refinement and maintainability.

---

## Architecture Flow

```
Source Systems
      ↓
Azure Data Factory
      ↓
ADLS Gen2 (Bronze Layer)
      ↓
Azure Databricks
      ↓
ADLS Gen2 (Silver → Gold Layers)
      ↓
Azure SQL Database
      ↓
Power BI Dashboards
```

---

## Core Components

### Resource Group
Logical container that manages all Azure resources within the project.  
Provides centralized deployment, access control, and cost monitoring.

---

### Azure Data Factory (ADF)
Cloud-based data orchestration service used to:
- Ingest data from source systems  
- Automate and schedule pipelines  
- Monitor execution and handle failures  

Acts as the control layer of the architecture.

---

### Azure Data Lake Storage Gen2 (ADLS Gen2)
Scalable storage optimized for analytics workloads.

Structured using Medallion architecture:
- **Bronze** → Raw ingested data  
- **Silver** → Cleaned and transformed data  
- **Gold** → Business-ready datasets  

---

### Azure Databricks
Distributed data processing platform built on Apache Spark.

Used to:
- Perform large-scale transformations  
- Clean and validate datasets  
- Generate curated data for reporting  

---

### Azure SQL Database
Relational database storing Gold-layer data optimized for reporting and analytics queries.

---

### Power BI Integration
Visualization layer connected to Azure SQL Database.

Used to:
- Build dashboards and KPIs  
- Enable interactive reporting  
- Provide business insights  

---

### Microsoft Entra ID
Identity and access management service used for:
- Role-Based Access Control (RBAC)  
- Secure authentication  
- Managed identities across services  

---

## Design Principles

- Layered data refinement (Bronze → Silver → Gold)  
- Centralized orchestration  
- Distributed data transformation  
- Secure role-based access control  
- Decoupled storage and compute  
- Automated and monitored workflows  

---

## Outcome

The project delivers a structured, automated, and scalable Azure data platform suitable for modern analytics workloads.
