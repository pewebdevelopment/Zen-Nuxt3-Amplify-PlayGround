import React from 'react';
import ReactDOM from 'react-dom';
import '../../components/vc/index.css';
import App from '../../components/vc/App.jsx'
import reportWebVitals from '../../components/vc/reportWebVitals.jsx';
import { ThemeProvider } from 'styled-components';


ReactDOM.render(
  <ThemeProvider theme={lightTheme}>
    <App />
  </ThemeProvider>,
  document.getElementById('root')
);

reportWebVitals();
