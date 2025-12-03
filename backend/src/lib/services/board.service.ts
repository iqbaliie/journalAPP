import { prisma } from "../prisma";

export const boardService = {
  getAll() {
    return prisma.board.findMany({
      orderBy: { id: "asc" },
    });
  },

  getById(id: number) {
    return prisma.board.findUnique({
      where: { id },
    });
  },
};
