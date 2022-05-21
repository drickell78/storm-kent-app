import '../styles/globals.css';
import React from 'react';
import { Container, Content, Wrapper } from '../components/styled/Layout';
import Logo from '../components/styled/Logo';
import {ApolloProvider} from "@apollo/client";
import client from "../apollo/client";
import Head from "next/head";

const App = ({ Component, pageProps }): JSX.Element => {
  return (
    <ApolloProvider client={client}>
      <Head>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
        <link href="https://fonts.googleapis.com/css?family=Catamaran" rel="stylesheet"/>
        <title>STORM App</title>
      </Head>
      <Wrapper>
        <Container>
          <Logo/>
          <Content>
            <Component {...pageProps} />
          </Content>
        </Container>
      </Wrapper>
    </ApolloProvider>
  );
};

export default App;