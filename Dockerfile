# Use the official MongoDB image from Docker Hub
FROM mongo:latest

# Set the default database path
VOLUME /data/db

# Expose the default MongoDB port
EXPOSE 27017

# Optional: Add an entrypoint script to initialize the database
COPY init-mongo.js /docker-entrypoint-initdb.d/

# Optional: Set an environment variable for easier local setup
ENV MONGO_INITDB_ROOT_USERNAME=root
ENV MONGO_INITDB_ROOT_PASSWORD=root123
ENV MONGO_INITDB_DATABASE=mongodb-taskmanager

# Start the MongoDB server
CMD ["mongod"]
