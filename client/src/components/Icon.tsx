import React from 'react';
import styled from "styled-components";

interface IconProps extends StyleProps {
  name: string
}

interface StyleProps {
  color?: string,
  size?: string
}

const StyledIcon = styled.span<StyleProps>`
  font-size: ${(props): string => props.size || '1rem'};
  ${(props): string => props.color ? `color: ${props.color}` : ''};
`;

const Icon = ({ name, ...props }: IconProps): JSX.Element => {
  return (
    <StyledIcon className="material-icons" {...props}>
      {name}
    </StyledIcon>
  );
}

export default Icon;