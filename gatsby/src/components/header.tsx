import { Link } from "gatsby"
import PropTypes from "prop-types"
import React from "react"
import styled from "styled-components"

const StyledLink = styled(Link)`
  align-items: center;
  color: white;
  display: flex;
  padding: 0 1rem;
  text-decoration: none;

  :hover {
    background-color: grey;
  }
`

const Links = styled.div`
  display: flex;
  height: 100%;
  min-height: 100%;
`

const StyledHeader = styled.header`
  align-items: center;
  background-color: black;
  display: flex;
  height: 3rem;
  justify-content: space-between;
  margin-bottom: 2rem;
  padding: 0 0 0 0.5rem;
`

const Header = ({ siteTitle }: { siteTitle: string }) => (
  <StyledHeader>
    <div
      style={{
        maxWidth: 960,
      }}
    >
      <h1 style={{ margin: 0 }}>
        <StyledLink to="/">{siteTitle}</StyledLink>
      </h1>
    </div>

    <Links>
      <StyledLink to="/">
        <div>home</div>
      </StyledLink>
      <StyledLink to="/about">about</StyledLink>
      <StyledLink to="/contact">contact</StyledLink>
    </Links>
  </StyledHeader>
)

Header.propTypes = {
  siteTitle: PropTypes.string,
}

Header.defaultProps = {
  siteTitle: ``,
}

export default Header
