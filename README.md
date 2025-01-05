# Online Auction System

## Overview
The Online Auction System is a dynamic, web-based platform built to streamline online auctions. Drawing inspiration from platforms like Etsy, eBid, and eBay, it empowers users to buy and sell items with ease. The system features a user-friendly interface, secure bidding mechanisms, and efficient data management powered by a relational database. Designed using technologies like JavaScript, Java, JSP, JBBC, HTML/CSS, and MySQL, the application is hosted locally on an Apache Tomcat server.

## Key Features

### General Features
- **User Management**: Seamlessly create, update, delete, login, and logout from accounts.
- **Bidding System**: Includes both manual and automatic bidding options with secret maximum limits for added security.
- **Notifications**: Stay informed with real-time alerts for bidding activities, auction closures, and system updates.
- **Advanced Search**: Effortlessly search and filter items based on categories, keywords, or custom criteria.

### Auction Features
#### For Sellers:
- Post items for auction with customizable settings, including:
  - Starting price
  - Minimum bidding increment
  - Auction duration and end time
  - Reserve price (hidden)
- Track active auctions and monitor incoming bids.
- Receive post-auction notifications for results and winning bids.

#### For Buyers:
- Place manual or automated bids with configurable upper limits.
- Receive real-time alerts for:
  - Outbids on auctions of interest.
  - Auction closure notifications.
- Access personal bidding histories and participation details.

#### Auction Closure:
- Items remain unsold if the reserve price is not met.
- Auctions are awarded to the highest bidder once the reserve price is exceeded.
- Notifications are automatically sent to both the seller and the winning bidder.

### Browsing and Search Features
- Search for items by category, keyword, or advanced filters (e.g., price range, ending soon).
- Access complete bidding histories for individual auctions.
- View participation histories for buyers and sellers.
- Discover similar items from previous auctions using predefined similarity criteria.
- Set custom alerts for specific items or categories of interest.

### Administrative and Support Features
#### For Administrators:
- Manage user and customer representative accounts effectively.
- Generate detailed sales reports, such as:
  - Total platform earnings.
  - Revenue breakdown by item, category, or user.
  - Insights on best-selling items and top buyers.
- Oversee and moderate all platform activities.

#### For Customer Representatives:
- Assist users by responding to queries about accounts and auctions.
- Remove inappropriate or user-requested auctions.
- Modify user account details, such as passwords or other information.
- Resolve disputes by deleting specific bids or auctions upon request.

### User-Specific Functionalities
#### For Buyers:
- Bid manually or automatically with secure upper limit settings.
- Stay updated with notifications about auctions of interest.
- Access and manage personal bidding and auction participation histories.

#### For Sellers:
- List items for auction with flexible pricing and bidding options.
- Monitor active auctions and bidding activity in real-time.
- Send notifications to winning bidders after auction closure.

#### For Administrators:
- Monitor customer representative activities and platform performance.
- Generate comprehensive reports to gain actionable insights.

#### For Customer Representatives:
- Provide user support by resolving account and auction issues.
- Manage user modifications and resolve disputes regarding auctions or bids.

---

## Technologies Used

### Frontend
- **HTML & CSS**: Used to design the user interface and layout.
- **JavaScript**: Enables client-side interactivity and dynamic webpage behavior.

### Backend
- **Java**: Programming language for the application logic and backend processing.
- **JSP (JavaServer Pages)**: Handles server-side rendering and creates dynamic web content.
- **JDBC (Java Database Connectivity)**: Connects and interacts with the MySQL database.

### Database
- **MySQL**: A relational database for storing auction data, user details, bidding history, and related records.

### Server
- **Apache Tomcat**: A Java servlet container for hosting the application and managing HTTP requests and responses.

### Development Tools
- **Eclipse IDE**: Used for coding, debugging, and deploying the project.
- **MySQL Workbench**: Tool for database design, management, and query execution.
- **JDBC Driver**: MySQL Connector/J to enable Java-MySQL communication.

---

## Getting Started

### Prerequisites
Ensure you have the following installed:
- **Java Runtime Environment (JRE)**: Version 8 or later.
- **Integrated Development Environment (IDE)**: Eclipse IDE for Java EE Developers (or equivalent).
- **MySQL Server**: Version 8.0.21 or later.
- **Apache Tomcat Server**: Version 8.5 or later.
- **JDBC Driver**: MySQL Connector/J.

---

### Installation Steps

#### 1. Install MySQL Server:
- Download and install MySQL Server.
- Launch MySQL Workbench and establish a connection to your local server.
- Import the database schema:
  - File → Open SQL script → Select "OnlineAuctionProject.sql" → Execute.

#### 2. Install Eclipse IDE:
- Download and install Eclipse IDE.
- Import the project:
  - File → Import → General → Existing Projects into Workspace → Select Project Folder.

#### 3. Install Apache Tomcat:
- Download and install Apache Tomcat.
- Configure the server in Eclipse:
  - Preferences → Server → Runtime Environment → Add → Apache Tomcat v8.5.

#### 4. Configure Database Connection:
- Update `ApplicationDB.java` with your username and password, as they are your personalized credentials used for the database:
  ```java
  connection = DriverManager.getConnection(connectionUrl, "USERNAME", "PASSWORD"); 
