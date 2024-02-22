from passlib.context import CryptContext
import asyncpg
from const.contants import *


async def get_database_connection():
    conn = await asyncpg.connect(DATABASE_URL)
    yield conn
    await conn.close()

