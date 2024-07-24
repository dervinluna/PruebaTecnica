# Prueba Técnica .NET 2024

Este proyecto es una solución para la prueba técnica .NET que incluye una página de login, consultas SQL, un archivo XML y una clase de ayuda para la conexión a la base de datos.

## Descripción del Proyecto

El proyecto consiste en desarrollar una aplicación web utilizando ASP.NET que cumpla con los siguientes requisitos:
1. Una página ASPX que solicite el nombre del usuario y la contraseña, validando que los campos no estén vacíos antes de enviar la solicitud al servidor.
2. Un documento XML que permita intercambiar información de tarjetas de crédito entre dos sistemas distintos.
3. Consultas SQL para interactuar con una base de datos con un esquema específico.
4. Una clase en C# que permita hacer conexiones a una base de datos y ejecutar consultas.

## Requisitos Previos

- .NET Framework 4.7.2
- Visual Studio 2019 o superior
- SQL Server

## Configuración y Ejecución

### Clonar el Repositorio

```bash
git clone https://github.com/dervinluna/PruebaTecnica
cd PruebaTecnica2024


Abrir el Proyecto
Abre Visual Studio.
Selecciona "Abrir un proyecto o solución".
Navega hasta la carpeta del proyecto y selecciona PruebaTecnica2024.sln.
Compilar y Ejecutar
Compila el proyecto (Build > Rebuild Solution).
Ejecuta el proyecto (Debug > Start Debugging o presiona F5).
Estructura del Proyecto
El proyecto está organizado de la siguiente manera:
PruebaTecnica2024
├── App_Start
│   ├── BundleConfig.cs          # Configuración de los bundles
│   └── RouteConfig.cs           # Configuración de las rutas
├── Data
│   └── DatabaseHelper.cs        # Clase para la conexión a la base de datos
├── Global.asax                  # Archivo de configuración global
├── Login.aspx                   # Página ASPX para el login de usuario
├── Login.aspx.cs                # Code-behind de la página de login
├── Web.config                   # Archivo de configuración de la aplicación
├── CreditCardTransaction.xml    # Archivo XML para intercambio de información de tarjetas de crédito
└── Queries.sql                  # Archivo con las consultas SQL requeridas
Detalles de Implementación
1. Página de Login
El archivo Login.aspx contiene la implementación de la página de login que solicita el nombre del usuario y la contraseña. La validación se realiza utilizando controles de validación de ASP.NET para asegurarse de que los campos no estén vacíos antes de enviar la solicitud.

2. Documento XML
El archivo CreditCardTransaction.xml permite intercambiar información de tarjetas de crédito entre dos sistemas distintos. Incluye elementos como el número de tarjeta, ID único de cliente y otros detalles relevantes.

3. Consultas SQL
El archivo Queries.sql contiene las siguientes consultas SQL:

Consulta que devuelve el nombre del proyecto y sus productos correspondientes del proyecto "Premia" (código 1).
Consulta que devuelve los distintos mensajes indicando a qué proyecto y producto pertenecen.
Consulta que devuelve los distintos mensajes indicando a qué proyecto y producto pertenecen, pero si el mensaje está en todos los productos de un proyecto, muestra "TODOS".
4. Clase de Conexión a la Base de Datos
Ubicación: Data/DatabaseHelper.cs
Descripción: Esta clase facilita las conexiones a la base de datos y la ejecución de consultas SQL. Contiene métodos para ejecutar comandos SELECT, INSERT, UPDATE y DELETE, y para devolver resultados en un DataSet.
