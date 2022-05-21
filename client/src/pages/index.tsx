import React, {useState} from 'react';
import { Header } from '../components/styled/Layout';
import client from "../apollo/client";
import { gql } from "@apollo/client";
import styled from "styled-components";
import SearchBar from "../components/SearchBar";

const BigText = styled.div`
  position: absolute;
  top: 1rem;
  right: 2rem;
  font-size: 4.5rem;
  font-weight: bolder;
`;

const Homepage = ({ users }): JSX.Element => {
  const [searchQuery, setSearchQuery] = useState('');

  return (
    <>
      <Header>
        <BigText>K&T</BigText>
        <SearchBar
          onChange={(e): void => setSearchQuery(e.target.value)}
          placeholder={'Search by name, student number or vunetId'}
          value={searchQuery || ''}
        />
      </Header>
    </>
  );
}

export async function getServerSideProps() {
  const { data } = await client.query({
    query: gql`
      query Users {
        allUsers {
          id
          firstName
          lastName
        }
      }
    `,
  });

  return {
    props: {
      users: data.allUsers,
    },
  };
}

export default Homepage;
