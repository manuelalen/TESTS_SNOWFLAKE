import os
import snowflake.connector
import glob

# Conexión a Snowflake
conn = snowflake.connector.connect(
    user=os.environ["SNOWSQL_USER"],
    password=os.environ["SNOWSQL_PWD"],
    account=os.environ["SNOWSQL_ACCOUNT"],
    warehouse="COMPUTE_WH",
    database="DEV_LEARN_DWH",
    schema="TEST_SCHEMA",
    role="SYSADMIN"
)
cur = conn.cursor()

try:
    sql_files = sorted(glob.glob("*.sql"))
    for file in sql_files:
        print(f"⏳ Ejecutando: {file}")
        with open(file, "r") as f:
            sql = f.read()
            for stmt in sql.split(";"):
                stmt = stmt.strip()
                if stmt:
                    print(f"🟢 Ejecutando sentencia:\n{stmt}")
                    cur.execute(stmt)
finally:
    cur.close()
    conn.close()
