import express from "express";

// create the router
const router = express.Router();

// add route
router.get("/", (req, res) => {
  res.send("Hello World");
});

export default router;
