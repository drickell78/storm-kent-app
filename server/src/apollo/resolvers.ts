import { PrismaClient } from '@prisma/client';
import { User } from '../types/Types';

const prisma = new PrismaClient();

export default {
  Query: {
    allUsers: () => prisma.user.findMany(),
    userById: (_, { id }) => prisma.user.findUnique({ where: { id } })
  },
  Mutation: {
    login: async (_: any, { pinCode }: { pinCode: number }): Promise<User> => {
      // @ts-ignore
      const getUser = await prisma.user.findUnique({ where: { pinCode } });
      return getUser || null;
    }
  }
};