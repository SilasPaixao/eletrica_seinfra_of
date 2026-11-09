ALTER TABLE "demands" ADD COLUMN "idReferencia" TEXT;
CREATE UNIQUE INDEX "demands_idReferencia_key" ON "demands"("idReferencia");
