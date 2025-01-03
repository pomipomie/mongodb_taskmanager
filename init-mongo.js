db = db.getSiblingDB("mongodb-taskmanager");

db.createUser({
  user: "root",
  pwd: "root123",
  roles: [{ role: "readWrite", db: "mongodb-taskmanager" }],
});

db.createCollection("exampleCollection"); // Create a sample collection
db.exampleCollection.insertOne({ name: "Sample Data", createdAt: new Date() });
