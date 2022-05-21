import { ApolloServer } from "apollo-server";
import typeDefs from "./apollo/schema";
import resolvers from "./apollo/resolvers";

const server =  new ApolloServer({ typeDefs, resolvers });

server.listen().then((): void => console.log('Listening on Port 4000'));

export default server;