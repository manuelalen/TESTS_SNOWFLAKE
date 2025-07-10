import snowflake.connector
import os

conn = snowflake.connector.connect(
    user='manolitoalen',
    password='Manolitosnowflake_13',
    account='nc47394.westeurope.azure',  # ❗️Este es tu account + región correcta
    warehouse='COMPUTE_WH',
    database='DEV_LEARN_DWH',
    schema='TEST_SCHEMA',
    role='SYSADMIN'
)

with conn.cursor() as cur:
    with open('TB_SNOWFLAKE_1_0_0.sql', 'r') as f:
        sql_script = f.read()
    cur.execute(sql_script)
    print("✅ Script ejecutado correctamente.")

conn.close()
