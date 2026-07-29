import express from "express";
import health from "./routes/health.js";

const app = express();

app.use(express.json());

app.get("/", (req, res) => {
  res.json({
    message: "Welcome to Atlas Platform 🚀",
  });
});

app.use("/health", health);

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`Atlas API running on port ${PORT}`);
});