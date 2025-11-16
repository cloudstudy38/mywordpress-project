wordpress-project/
│
├── wordpress/                  # WordPress source or custom WP config
│
├── docker/ 
│   ├── Dockerfile              # Containerization
│   ├── wp-config.php           # Config file template
│
├── cloudformation/
│   ├── wordpress-ec2.yml       # EC2 + RDS deployment template
│   ├── wordpress-ecs.yml       # ECS alternative
│
├── springboot-monitoring/
│   ├── src/...                 # Spring Boot monitoring service
│   ├── pom.xml
│
└── Jenkinsfile                 # Jenkins pipeline
