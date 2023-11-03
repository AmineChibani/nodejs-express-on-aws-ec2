const express = require('express');
const app =express();
const port=3000;

app.get('/', (req, res) => {
    res.send('<h1>Hello world</h1><h4>Message: Succes</h4> <p>version 1.0</p>');
})

app.get('/products', (req,res) =>{
    res.send([
        {
            productId:'101',
            price:100
        },
        {
            productId:'102',
            price:150
        }
    ])
})

app.listen(port ,() =>{
    console.log(`server is runnig and listening to port :${port}`);
})
