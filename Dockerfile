#paso 1: utilizamos una imagen base de python
FROM  python:3.12-slim
#paso 2: establecemos el directorio de trabajo dentro del contenedor 
WORKDIR /app

#paso 3: copiamos el archivo de requerimientos al contenedor y luego instalamos las dependencias
COPY requirements.txt /app

#paso 4: instalamos las dependencias 
RUN pip install -r requirements.txt

#paso 5: copiamos el resto de los archivos del proyecto al contenedor
COPY . /app/

#paso 6: ejecutamos la aplicación
CMD ["python", "app.py"]