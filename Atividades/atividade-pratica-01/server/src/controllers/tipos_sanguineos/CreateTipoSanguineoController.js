import { prismaClient } from "../../database/client.js";

export class CreateTipoSanguineoController {

    async handle(request, response) {

        const { tipo, fator } = request.body;

        const tipo_sanguineo = await prismaClient.Sangue.create({
            data: {
                tipo,
                fator
            }
        });

        return response.json(tipo_sanguineo);
    }
}