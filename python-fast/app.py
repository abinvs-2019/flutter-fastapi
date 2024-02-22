from fastapi import FastAPI, HTTPException, Depends, status
from pydantic import BaseModel
from models.user_model import *
from passlib.context import CryptContext
import asyncpg
from helpers.db_helpers import get_database_connection

# Create FastAPI app
app = FastAPI()

# Configure password hashing
pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")


@app.post("/register/", response_model=UserDetails)
async def register(user: User, db: asyncpg.Connection = Depends(get_database_connection)):
    hashed_password = pwd_context.hash(user.password)
    try:
        await db.execute(
            "INSERT INTO users (username, hashed_password) VALUES ($1, $2)",
            user.username, hashed_password
        )
        return {"username": user.username, "email": "", "full_name": ""}
    except asyncpg.UniqueViolationError:
        
        raise HTTPException(status_code=status.HTTP_400_BAD_REQUEST, detail="Username already exists")

@app.post("/login/")
async def login(user: User, db: asyncpg.Connection = Depends(get_database_connection)):
    
    db_user = await db.fetchrow("SELECT * FROM users WHERE username = $1", user.username)
    
    if db_user is None or not pwd_context.verify(user.password, db_user['hashed_password']):
        raise HTTPException(status_code=status.HTTP_401_UNAUTHORIZED, detail="Incorrect username or password")
    return {"message": "Login successful"}

@app.get("/profile/", response_model=UserDetails)
async def profile(username: str, db: asyncpg.Connection = Depends(get_database_connection)):
    
    user = await db.fetchrow("SELECT username, email, full_name FROM users WHERE username = $1", username)
    if user is None:
        
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="User not found")
    return user

@app.put("/profile/")
async def update_profile(username: str, details: UserDetails, db: asyncpg.Connection = Depends(get_database_connection)):
    result = await db.execute(
        "UPDATE users SET email = $1, full_name = $2 WHERE username = $3",
        details.email, details.full_name, username
    )
    if result == "UPDATE 0":
        raise HTTPException(status_code=status.HTTP_404_NOT_FOUND, detail="User not found")
    return {"message": "Profile updated successfully"}




if __name__ == "__main__":
    import uvicorn
    uvicorn.run("app:app", host="127.0.0.1", port=5000, reload=True) # main one
    # uvicorn.run(app, host='0.0.0.0', port=8002)






