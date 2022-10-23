-- CreateTable
CREATE TABLE "estados" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "sigla" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "estados_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "cidades" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "estado_id" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "cidades_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pessoas" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "cidade_id" INTEGER NOT NULL,
    "tipo_sanguineo_id" INTEGER NOT NULL,

    CONSTRAINT "pessoas_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "locais_coleta" (
    "id" SERIAL NOT NULL,
    "nome" TEXT NOT NULL,
    "cidade_id" INTEGER NOT NULL,

    CONSTRAINT "locais_coleta_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Doacao" (
    "id" SERIAL NOT NULL,
    "pessoa_id" INTEGER NOT NULL,
    "local_id" INTEGER NOT NULL,

    CONSTRAINT "Doacao_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "tipos_sanguineos" (
    "id" SERIAL NOT NULL,
    "tipo" TEXT NOT NULL,
    "fator" TEXT NOT NULL,

    CONSTRAINT "tipos_sanguineos_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "cidades" ADD CONSTRAINT "cidades_estado_id_fkey" FOREIGN KEY ("estado_id") REFERENCES "estados"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "pessoas" ADD CONSTRAINT "pessoas_cidade_id_fkey" FOREIGN KEY ("cidade_id") REFERENCES "cidades"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "pessoas" ADD CONSTRAINT "pessoas_tipo_sanguineo_id_fkey" FOREIGN KEY ("tipo_sanguineo_id") REFERENCES "tipos_sanguineos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "locais_coleta" ADD CONSTRAINT "locais_coleta_cidade_id_fkey" FOREIGN KEY ("cidade_id") REFERENCES "cidades"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Doacao" ADD CONSTRAINT "Doacao_pessoa_id_fkey" FOREIGN KEY ("pessoa_id") REFERENCES "pessoas"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Doacao" ADD CONSTRAINT "Doacao_local_id_fkey" FOREIGN KEY ("local_id") REFERENCES "locais_coleta"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
