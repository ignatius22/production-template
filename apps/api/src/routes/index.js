import { Router } from "express";
import health from "./health.js";

const router = Router();

router.get("/", (req, res) => {
  res.json({
    message: "Atlas Production Template",
  });
});

router.use("/health", health);

export default router;