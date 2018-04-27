import React from 'react';
import {App, AppHeader, Title, AppIntro, AppLogo} from './styles';
import logo from './logo.svg';
const paragraphStyles = {backgroundColor: "orange"};

export default function Home() {
	return(

      <App>
        <AppHeader>
          <AppLogo src={logo} alt="logo" />
          <Title>Welcome to React</Title>
        </AppHeader>
        <AppIntro>
          To get started, edit <code>src/App.js</code> and save to reload.
        </AppIntro>
        <h2>Hot reloading is amazing!</h2>
      </App>
    );
	
}