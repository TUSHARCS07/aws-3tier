const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/health', (req, res) => res.status(200).send('OK'));
app.get('/api/data', (req, res) => res.json({ message: 'Hello from the backend API!' }));

app.listen(port, () => console.log(`Backend running on port ${port}`));