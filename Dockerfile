FROM japeto/so-tools:v64

# Carpeta de trabajo
WORKDIR /app

# Copiar archivos
COPY . .

# Compilar programa
RUN g++ main.cpp fcfs.cpp scan.cpp cscan.cpp -o diskScheduler

# Ejecutable principal
ENTRYPOINT ["./diskScheduler"]