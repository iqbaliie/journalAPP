import express from "express";

const app = express();

app.get("/", (req, res) => {
  res.json({ message: "API is running ✅" });
});

const PORT = process.env.PORT || 4000;
app.listen(PORT, () => {
  console.log(`🚀 Server running at http://localhost:${PORT}`);
});