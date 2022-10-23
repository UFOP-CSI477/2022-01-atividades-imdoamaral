/*
  Warnings:

  - Added the required column `tipo_sanguineo_id` to the `pessoas` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "pessoas" ADD COLUMN     "tipo_sanguineo_id" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "tipos_sanguineos" (
    "id" SERIAL NOT NULL,
    "tipo" TEXT NOT NULL,
    "fator" TEXT NOT NULL,

    CONSTRAINT "tipos_sanguineos_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "pessoas" ADD CONSTRAINT "pessoas_tipo_sanguineo_id_fkey" FOREIGN KEY ("tipo_sanguineo_id") REFERENCES "tipos_sanguineos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
