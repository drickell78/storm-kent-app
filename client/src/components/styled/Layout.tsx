import styled from 'styled-components';

export const Wrapper = styled.div`
  width: 100vw;
  height: 100vh;
  position: absolute;
  top: 0;
  left: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  background: #303035;
  z-index: -100;
`;

export const Container = styled.div`
  width: 1400px;
  height: 1050px;
  position: relative;
  background: linear-gradient(170deg, rgba(255,74,108,1) 0%, rgba(218,27,62,1) 52%, rgba(193,14,56,1) 100%);
  border-radius: .5rem;
  box-shadow: 0 3px 15px 5px rgba(0,0,0,0.3);
  z-index: -99;
  
  @media (max-width: 1400px) {
    width: 100%;
    height: inherit;
    max-height: 1050px;
  }
`;

export const Content = styled.div`
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
`;

export const Header = styled.div`
  display: flex;
  height: 8.5rem;
`;