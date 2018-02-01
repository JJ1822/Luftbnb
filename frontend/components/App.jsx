import React from 'react';
import {Route} from 'react-router-dom';
import MainPageContainer from './main_page/main_page_container';
import SessionFormContainer from './session_form/session_form_container';

const App = () => (
  <div>
    <header>
      <MainPageContainer />
    </header>
    <Route path="/login" component={SessionFormContainer} />
    <Route path="/signup" component={SessionFormContainer} />
  </div>
);

export default App;
