import { prismaClient } from "../../database/client.js";

export class GetAllDoacoesController {

    async handle(request, response) {

        const doacoes = await prismaClient.doacoes.findMany({
            include: {
                local: true,
                pessoa: true
            }
        })
    }
}