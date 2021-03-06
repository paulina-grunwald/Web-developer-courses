import React from 'react';
import logo from './GloboLogo.png';

const Header = (props) => (
    <header className="row display-inline">
        <div className="col-md-5 col-lg-5">
            <img src={logo} className="logo" alt="logo" />
        </div>
        <div className="col-md-7 col-lg-7 subtitle">
            {props.subtitle}
        </div>
    </header>
);

export default Header;