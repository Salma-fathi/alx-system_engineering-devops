
Web Infrastructure Design Project
This repository contains the solutions for the Web Infrastructure Design project in the ALX DevOps/SysAdmin track.

Task 0: Simple Web Stack
Description
A simple web stack consisting of a single server hosting the website www.foobar.com.

Components
1 server
1 Nginx web server
1 application server
1 MySQL database
1 domain name foobar.com with a www record pointing to server IP 8.8.8.8
Explanation
Server: The physical or virtual machine hosting the web infrastructure.
Domain Name: Acts as the address for the website, allowing users to access it via www.foobar.com.
DNS Record: The www record is a DNS record type used to specify that the domain is accessible via the World Wide Web.
Web Server (Nginx): Handles HTTP requests from clients and serves static content.
Application Server: Executes application logic and generates dynamic content.
Database (MySQL): Stores and manages website data, including user information and content.
Communication: The server communicates with users' computers over the internet using HTTP/HTTPS protocols.
Issues
Single Point of Failure (SPOF): The entire website becomes inaccessible if the server fails.
Downtime during Maintenance: Deploying new code or performing maintenance requires restarting the web server, causing downtime.
Scalability Limitation: Unable to handle high traffic loads efficiently.
Task 0 Diagram

Task 1: Distributed Web Infrastructure
Description
A distributed web infrastructure with load balancing for www.foobar.com.

Components
2 servers
1 Nginx web server
1 application server
1 HAproxy load balancer
1 MySQL database
Explanation
Additional Elements: Added to enhance redundancy, scalability, and performance.
Load Balancer: Distributes incoming traffic across multiple servers to improve performance and prevent overload.
Distribution Algorithm: Configured with a round-robin algorithm to evenly distribute requests among servers.
Active-Active Setup: Both servers actively handle requests simultaneously, improving availability.
Primary-Replica Database Cluster: The primary node accepts write operations, while replica nodes synchronize data for redundancy and failover.
Primary vs. Replica: Primary node handles write operations, while replica nodes serve read-only requests.
Issues
Single Points of Failure: Load balancer, database, and servers can still be SPOFs if not properly configured for redundancy.
Security Issues: Lack of firewall and HTTPS encryption exposes the infrastructure to security threats.
Monitoring: Absence of monitoring makes it challenging to detect and respond to issues effectively.
Task 1 Diagram

Task 2: Secured and Monitored Web Infrastructure
Description
A secure and monitored web infrastructure for www.foobar.com.

Components
3 firewalls
SSL certificate for HTTPS
3 monitoring clients
Explanation
Firewalls: Implemented to control and secure network traffic, protecting against unauthorized access and cyber threats.
HTTPS: Traffic served over HTTPS for encrypted communication, ensuring data confidentiality and integrity.
Monitoring: Monitors infrastructure health, performance, and security, enabling proactive detection and resolution of issues.
QPS Monitoring: Measure and analyze web server queries per second (QPS) to understand traffic patterns and performance metrics.
Issues
SSL Termination: Terminating SSL at the load balancer exposes decrypted traffic internally, increasing security risks.
Single MySQL Server: Having only one MySQL server capable of accepting writes creates a single point of failure for database operations.
Uniform Servers: Identical server components increase vulnerability to common points of failure and limit fault tolerance.
Task 3: Scale Up
Description
An infrastructure designed for scalability and performance.

Components
1 server
1 HAproxy load balancer configured as a cluster
Split components (web server, application server, database)
Explanation
Scalability: Components are distributed and load-balanced to handle increased traffic and user load.
HAproxy Cluster: Load balancers are configured in a cluster for high availability and fault tolerance.
Split Components: Separating components into distinct servers enhances scalability, fault isolation, and resource allocation.
Issues
Single Point of Failure: Load balancers and servers can still be SPOFs if not properly configured for redundancy.
Security Issues: Lack of firewall and HTTPS encryption exposes the infrastructure to security threats.
Monitoring: Absence of monitoring makes it challenging to detect and respond to issues effectively.
