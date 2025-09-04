# DWH-Modeling
Star Schema & Snowflake Schema Modeling with SSMS

## Star Schema  
This schema is called a "star" because its structure resembles a star shape: at the center lies the fact table, and surrounding it are several dimension tables that are directly connected to the fact table.

<div align="center">
<img width = "80%" src = "https://github.com/anandawln/DWH-Modeling/blob/main/assets/star.png">
</div>

## Snowflake Schema
This schema is called a "snowflake" because its structure resembles a snowflake: the fact table remains at the center, but the surrounding dimension tables are further broken down into sub-dimensions, forming multiple levels of hierarchy. Each dimension may reference other dimension tables, creating a more normalized and structured design compared to the star schema.

<div align="center">
<img width = "80%" src = "https://github.com/anandawln/DWH-Modeling/blob/main/assets/snowflake.png">
</div>
