from fastapi import FastAPI
from doctores import router as doctores_router
from pacientes import router as pacientes_router
from citas import router as citas_router
from recetas import router as recetas_router

app = FastAPI()
app.include_router(doctores_router, prefix="/doctores")
app.include_router(pacientes_router, prefix="/pacientes")
app.include_router(citas_router, prefix="/citas")
app.include_router(recetas_router, prefix="/recetas")