# Project1-AzureServices
This repository contains the implementation and documentation of a cloud-based data engineering architecture built using Microsoft Azure services. The project demonstrates end-to-end data ingestion, transformation, storage, and visualization using industry-standard Azure tools.

The objective of this project is to design a scalable, secure, and production-oriented data pipeline architecture integrating Azure Data Factory, Azure Data Lake Gen2, Azure Databricks, Azure SQL Database, and Power BI.


# Resource Group
Definition
A Resource Group in Azure is a logical container used to organize and manage related cloud resources within a project. It groups services such as Azure Data Factory, ADLS Gen2, Databricks, Azure SQL Database, and Key Vault under a single management boundary.
It enables centralized deployment, access control, monitoring, and lifecycle management of all included resources.

Why Resource Group?
Azure provides multiple ways to organize resources, but each serves a different purpose:
Subscription → Used for billing and high-level isolation. Too broad for project-level structuring.
Management Group → Designed for governance across multiple subscriptions. Suitable for enterprise policy control, not individual projects.
Tags → Useful for categorization and cost labeling, but do not provide lifecycle or access management.

Resource Groups are preferred because they:
Provide project-level isolation
Enable Role-Based Access Control (RBAC) at group level
Allow grouped deployment using ARM/Bicep templates
Support centralized cost tracking
Enable bulk deletion of project resources

In Project1-AzureServices, all Azure components are placed within a single Resource Group to maintain clean architecture, controlled access, and simplified resource management.
