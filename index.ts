import express from 'express';

const app = express();

const PORT = process.env.PORT ?? 3000;

app.get('/', (req, res) => {
  const message = 'hi from initial route.';
  console.log(message);

  res.json({
    message,
  });
});

app.listen(PORT, () => {
  console.log(`Server started at ${PORT}`);
});
