# Link Shortner

A powerful and simple link shortener application built with Ruby on Rails. This project allows users to shorten long URLs, track link metrics, and manage their links through a secure login system.

## Features

* **URL Shortening:** Easily create short, memorable links from long URLs.
* **User Authentication:** Securely log in to manage your personal links.
* **Link Metrics:** Track important data for your shortened links, including the number of clicks and other useful analytics.
* **PostgreSQL Database:** Utilizes a robust and reliable database for efficient data management.

## Prints
### Login screen
<img width="1920" height="1001" alt="image" src="https://github.com/user-attachments/assets/99e828c3-8c85-42fd-bccc-ff4bc3ae4fc9" />

### Sign up screen
<img width="1920" height="1001" alt="image" src="https://github.com/user-attachments/assets/af713002-ca17-4fc9-a8fb-05e16aa597bc" />

### My links screen
<img width="1920" height="1001" alt="image" src="https://github.com/user-attachments/assets/0923d7f5-462c-4028-8ecd-c908c23384a8" />

### New link screen
<img width="1920" height="1001" alt="image" src="https://github.com/user-attachments/assets/cdd0b148-b4ef-4399-bd80-bebbc9987ebd" />

### Short link screen
<img width="1920" height="1001" alt="image" src="https://github.com/user-attachments/assets/871e0aaa-596c-4405-b0db-c520580d4aab" />

### Link dashboard screen
<img width="1920" height="1001" alt="image" src="https://github.com/user-attachments/assets/cea29ad7-d158-4325-a342-bfc499bb6fe4" />

## Getting Started

Follow these steps to get a copy of the project up and running on your local machine.

### Prerequisites

You need to have **Ruby** and **Rails** installed on your system. This project also requires **PostgreSQL**.

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/thiagonatandev/link_shortner
    ```
2.  **Install dependencies:**
    Navigate into the project directory and install the necessary gems.
    ```bash
    cd link_shortner
    bundle install
    ```
3.  **Set up the database:**
    Configure your database credentials in `config/database.yml` and then run the migrations.
    ```bash
    rails db:create
    rails db:migrate
    ```
4.  **Run the server:**
    Start the local Rails server to access the application.
    ```bash
    rails s
    ```

The application should now be available at `http://localhost:3000`.
