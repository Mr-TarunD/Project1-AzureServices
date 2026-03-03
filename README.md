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
# Project1-AzureServices

This repository demonstrates an end-to-end Azure Data Engineering architecture implementing ingestion, transformation, storage, and visualization using modern Azure services.

---

## Resource Group

### Definition
A Resource Group is a logical container in Azure that organizes and manages related resources within a project. It enables centralized deployment, monitoring, access control, and lifecycle management.

### Why Resource Group?
- **Subscription** → Used for billing and global isolation, too broad for project-level grouping.
- **Management Group** → Used for enterprise governance across subscriptions, not project structuring.
- **Tags** → Provide metadata classification but no lifecycle or access control.

Resource Groups allow project-level isolation, RBAC control, cost tracking, and bulk resource management, making them essential for structured Azure architecture.

---

## Azure Data Lake Storage Gen2 (ADLS Gen2)

### Definition
ADLS Gen2 is a scalable cloud storage service optimized for analytics workloads. It supports hierarchical namespace (HNS), enabling directory-style organization for big data processing.

### Why ADLS Gen2?
- **Blob Storage** → Object storage without analytics optimization (unless upgraded).
- **Azure SQL Database** → Structured storage only, not suitable for raw big data.
- **Azure Files** → Designed for file sharing, not analytics.

ADLS Gen2 is preferred for large-scale analytics storage, structured data layering (Bronze, Silver, Gold), and seamless integration with Databricks and ADF.

---

## Azure Data Factory (ADF)

### Definition
Azure Data Factory is a cloud-based data orchestration service used to build, schedule, and monitor data pipelines across multiple sources and destinations.

### Why Azure Data Factory?
- **Azure Databricks** → Best for transformation, not orchestration.
- **Logic Apps** → Designed for app workflows, not data engineering pipelines.
- **SSIS** → Traditional ETL, not fully cloud-native.

ADF centralizes pipeline automation, dependency management, monitoring, and integration with 100+ connectors, making it the orchesation layer of the architecture.

---

## Azure Databricks

### Definition
Azure Databricks is a distributed data processing platform built on Apache Spark. It enables large-scale data transformation and advanced analytics.

### Why Azure Databricks?
- **ADF Data Flow** → Suitable for basic transformations, limited for complex distributed workloads.
- **Azure SQL** → Optimized for structured queries, not heavy transformation.
- **Azure Functions** → Event-driven compute, not big data processing.

Databricks provides scalable distributed computation, multi-language support (Python, SQL, Scala), and seamless integration with ADLS Gen2.

---

## Azure SQL Database

### Definition
Azure SQL Database is a fully managed relational database service used for structured storage and optimized reporting queries.

### Why Azure SQL Database?
- **ADLS Gen2** → Raw and semi-structured storage, not optimized for relational queries.
- **On-Prem SQL Server** → Requires infrastructure management.
- **NoSQL Databases** → Not ideal for structured reporting workloads.

Azure SQL provides structured schema enforcement, optimized query performance, and seamless integration with Power BI.

---

## Microsoft Entra ID

### Definition
Microsoft Entra ID is a cloud-based identity and access management service used to authenticate users and control access to Azure resources.

### Why Microsoft Entra ID?
- **Shared Access Keys** → Less secure and harder to govern.
- **Local Authentication** → Not centralized.
- **Hardcoded Credentials** → Security risk.

Entra ID enables RBAC, managed identities, centralized authentication, and secure cross-service communication.

---

## Medallion Architecture (Bronze–Silver–Gold)

### Definition
Medallion Architecture is a layered data design pattern that progressively improves data quality across three stages:
- Bronze → Raw data
- Silver → Cleaned data
- Gold → Business-ready data

### Why Medallion Architecture?
- **Single-layer storage** → No separation of raw and processed data.
- **Direct ETL to SQL** → No reprocessing capability.
- **Flat data structure** → Poor lineage and debugging.

The layered approach ensures traceability, scalability, data quality improvement, and clear transformation boundaries.

---

## Power BI Integration

### Definition
Power BI integration connects curated datasets (Gold layer or Azure SQL) to interactive dashboards and reports for business consumption.

### Why Power BI?
- **Excel** → Limited scalability.
- **Direct SQL Queries** → Not business-friendly.
- **Custom dashboards** → Higher development effort.

Power BI provides interactive visualization, scheduled refresh, enterprise adoption, and secure access control for analytics consumption.

---





---

## Outcome

The project delivers a structured, automated, and scalable Azure data platform suitable for modern analytics workloads.
