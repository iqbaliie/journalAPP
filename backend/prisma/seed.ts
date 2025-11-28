import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

async function main() {
  // cek apakah board stok barang sudah ada
  const existing = await prisma.board.findFirst({
    where: { name: "Board Stok Barang" },
  });

  if (!existing) {
    await prisma.board.create({
      data: {
        name: "Board Stok Barang",
        type: "STOCK",
      },
    });
    console.log("Board Stok Barang created");
  } else {
    console.log("Board Stok Barang already exists");
  }
}

main()
  .catch((e) => {
    console.error(e);
  })
  .finally(async () => {
    await prisma.$disconnect();
  });