import express from "express";

const app = express();

app.get("/", (req, res) => {
    res.send("get request");
})

app.post("/", (req, res) => {
    res.json({
        "message": " post request"
    })
})

app.listen(3000, () => console.log("listening on port 3000"));