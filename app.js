const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send("<br><p><h3> This message generated by a NodeJS api<p> run in Docker container</h3><p><h3> Created by Terraform</h3>")
})

app.listen(port, () => {
  console.log(`express server app listening at http://localhost:${port}`)
})
