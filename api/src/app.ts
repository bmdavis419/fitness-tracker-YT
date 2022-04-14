import cors from "cors";
import express from "express";
import starter_router from "./routes/start";
require("dotenv").config({ override: false });

// create the express app
const app = express();

// basic middlewares
app.use(cors());
app.use(express.json());

// routes
app.use("/", starter_router);

// start server
app.listen(process.env.PORT, () => {
  console.log(`server live on ${process.env.PORT}`);
});
