import styled from 'styled-components';
import React from 'react';


const Wrapper = styled.div`
  width: 10rem;
  height: 10rem;
  margin-left: 2rem;
  margin-top: .25rem;
  position: relative;
`;

const Shadow = styled.div`
  width: 80%;
  position: absolute;
  top: 3rem;
  left: 1rem;
  box-shadow: 0 3px 70px 20px rgba(0,0,0,0.4);
  z-index: -1;
`;

const Logo = (): JSX.Element => (
  <Wrapper>
    <Shadow/>
    <img src={'/logo.svg'} alt={'logo'}/>
  </Wrapper>
);

export default Logo;