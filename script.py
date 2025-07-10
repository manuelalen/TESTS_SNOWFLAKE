import snowflake.connector
import os

conn = snowflake.connector.connect(
    user=os.environ['SNOWFLAKE_USER'],
    password=os.environ['SNOWFLAKE_PASSWORD'],
    account='nc47394.azure-westeurope',  # ← ¡ESTE es el valor correcto!
    warehouse='COMPUTE_WH',
    database='DEV_LEARN_DWH',
    schema='TEST_SCHEMA',
    role='SYSADMIN'
)

cs = conn.cursor()
try:
    cs.execute("SELECT CURRENT_VERSION()")
    print(cs.fetchone())
finally:
    cs.close()
