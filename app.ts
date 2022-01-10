import express, { Request, Response } from 'express'

const app = express()

app.get('/', (req: Request, res: Response) => {
    res.json({
        status: 1,
        title: 'Docker is Great!!'
    })
})

const PORT = process.env.PORT || 8000

app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`)
})