# terraformwordpress
This is a project to install wordpress on aws ec2 instances using terraform to automate it 

# WordPress on AWS EC2 and RDS

This project involves deploying a WordPress website on an AWS EC2 instance and connecting it to a MySQL database hosted on AWS RDS.

## Table of Contents

- [Project Overview](#project-overview)
- [Technologies Used](#technologies-used)
- [Setup and Deployment](#setup-and-deployment)
- [Challenges Faced](#challenges-faced)
- [Lessons Learned](#lessons-learned)
- [Contributing](#contributing)
- [License](#license)

## Project Overview

This repository contains the Terraform configurations and other necessary files to deploy a WordPress website on AWS. The website is hosted on an EC2 instance, and the data is stored in an RDS MySQL database.

## Technologies Used

- **AWS EC2**: Virtual server for hosting the WordPress website.
- **AWS RDS**: Managed relational database service for MySQL.
- **Terraform**: Infrastructure as Code tool for provisioning and managing AWS resources.
- **Apache**: Web server software.
- **PHP**: Server-side scripting language used by WordPress.

## Setup and Deployment

1. Clone this repository.
2. Navigate to the project directory.
3. Initialize Terraform: `terraform init`
4. Apply the Terraform configurations: `terraform apply`
5. Follow the on-screen prompts to complete the deployment.

## Challenges Faced

- Syntax errors in configuration files.
- Database connection issues.
- Security group configurations in AWS.
- Terraform resource linking.
- Server and service management on EC2.
- Log analysis and debugging.

## Lessons Learned

- Importance of thorough testing before deployment.
- Attention to detail in configuration files.
- Continuous learning and adaptation in the face of challenges.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

