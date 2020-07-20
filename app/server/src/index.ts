// Express example server
import express from 'express'
const port = Number(process.env.port) || 8000

const app = express()
app.use(express.json())

// form here you can for example connect to the MongoDB-Server

app.listen(port, () => {
  console.log(`Server is listening on port ${port}`)
})
