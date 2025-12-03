-- CreateTable
CREATE TABLE "Board" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "type" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Board_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "StockRow" (
    "id" SERIAL NOT NULL,
    "boardId" INTEGER NOT NULL,
    "item" TEXT NOT NULL,
    "okt" TEXT,
    "yardAwal" DOUBLE PRECISION NOT NULL,
    "sisaYard" DOUBLE PRECISION NOT NULL,
    "tanggalAwalRoll" TIMESTAMP(3),
    "terjual" DOUBLE PRECISION,
    "lokasiRollBantal" TEXT,
    "stockOpname" DOUBLE PRECISION,
    "sku" TEXT,
    "stockOpnameCheck" BOOLEAN NOT NULL DEFAULT false,
    "keterangan" TEXT,
    "cekAktual" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "StockRow_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "StockRow" ADD CONSTRAINT "StockRow_boardId_fkey" FOREIGN KEY ("boardId") REFERENCES "Board"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
