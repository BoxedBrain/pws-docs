# Installation

The following pages will provide you with all the informations how to install the different Password Safe components.

## System landscape

The following overview presents a basic production Password Safe system landscape. Version 8 allows use of several database servers across all sites. These are then synchronized using Microsoft SQL server tools. Any number of application servers can be made available for the client connection. This ensures load distribution, and allows work without significant latency. This technology offers enormous performance advantages, particularly in the case of installations that are spread across worldwide locations.

![Image title](/assets/en/system_landscape.png){ loading=lazy }

## Client (presentation layer)

The client layer handles the representation of all data and functions, which are provided by the application server.

## Application server (business logic)

The application server is entirely responsible for the control of the business logic. This server only ever delivers the data for which the corresponding permissions are available. The multi-tier architecture described at the beginning allows the use of several application servers and ensures efficient load distribution.

## Database server (data storage)

Password Safe version 8 uses Microsoft SQL Server to store data due to its widespread use, and its ability to ensure high-performance access even in large and geographically scattered environments. Smaller installations may also use the free SQL Express version.

## Conclusion

At least three servers are thus recommended:

- Database server (MSSQL)
- Application server (Password Safe services)
- Web server (IIS, NginX, Apache 2)
