[
  {
    "name": "backend-app",
    "image": "${app_image}",
    "cpu": ${fargate_cpu},
    "memory": ${fargate_memory},
    "networkMode": "awsvpc",
    "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/ecs/backend-app",
          "awslogs-region": "${aws_region}",
          "awslogs-stream-prefix": "ecs"
        }
    },
    "portMappings": [
      {
        "containerPort": ${app_port},
        "hostPort": ${app_port}
      }
    ],
    "environment" : [
      { "name" : "AWS_ACCESS_KEY_ID", "value" : "AKIARDGYDZHT6PA6DUFV" },
      { "name" : "AWS_SECRET_ACCESS_KEY", "value" : "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" }
    ]
  }
]