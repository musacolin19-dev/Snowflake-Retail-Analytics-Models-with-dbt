# Snowflake Retail Analytics Models with dbt

A compact dbt project for modeling raw retail order rows into trusted staging and daily revenue reporting models in Snowflake. Includes source freshness assumptions, schema-level uniqueness and null checks, and example seeds. Intended to demonstrate SQL-first ELT and dimensional modeling; a Snowflake account and dbt adapter are required to execute.

## Quick start

```bash
python -m unittest discover -s tests -v
# optional with configured Snowflake credentials: dbt seed && dbt run && dbt test
```

## Architecture and scope

Authentic dbt SQL/Jinja project; connection profiles are intentionally excluded. Seed with synthetic retail transactions, transform orders, and aggregate daily revenue. No credentials are embedded.

**Portfolio note:** Original educational starter code, not a production deployment. Use only synthetic/public datasets, document your own extensions, and test integrations before claiming production experience.
