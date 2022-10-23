import express, { application } from 'express';
import { mainRouter } from './routes/main.js';
import { estadoRouter } from './routes/estados.js';
import { cidadeRouter } from './routes/cidades.js';
import { sangueRouter } from './routes/tipos_sanguineos.js';
import { pessoaRouter } from './routes/pessoas.js';
import { localRouter } from './routes/locais_coleta.js';
import { doacaoRouter } from './routes/doacoes.js';
import cors from 'cors';

const PORT = 4000;

const app = express();

app.use(express.json());
app.use(cors());
app.use(mainRouter);
app.use(estadoRouter);
app.use(cidadeRouter);
app.use(sangueRouter);
app.use(pessoaRouter);
app.use(localRouter);
app.use(doacaoRouter);

app.listen(PORT, () => {
    console.log(`[SERVER] Server is running on port ${PORT}.`);
});