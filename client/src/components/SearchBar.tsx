import React from "react";
import styled from "styled-components";
import Icon from "./Icon";

const StyledInput = styled.input`
  width: 100%;
  height: 4rem;
  background: none;
  border-bottom: 3px solid #fff;
  border-top: none;
  border-left: none;
  border-right: none;
  color: white;
  font: inherit;
  font-size: 2rem;
  ::placeholder {
    color: inherit;
    opacity: .5;
  }
  :focus {
    outline: none;
  }
`;

const IconWrapper = styled.div`
  position: absolute;
  right: 0;
`;

const Wrapper = styled.div`
  width: 100%;
  margin: 0 18rem;
  display: flex;
  align-items: center;
  position: relative;
`;

const SearchBar = ({ ...props }): JSX.Element => {
  return (
    <Wrapper>
      <StyledInput {...props} />
      <IconWrapper>
        <Icon name={'search'} size={'2.5rem'} />
      </IconWrapper>
    </Wrapper>
  );
}

export default SearchBar;