import React from 'react';
import {Route} from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import MainPageContainer from './main_page/main_page_container';
import SessionFormContainer from './session_form/session_form_container';
import SpotSearchContainer from './spot/spot_search_container';

const App = () => (
  <div>
    <header>
      <MainPageContainer />
    </header>
    <AuthRoute path="/login" component={SessionFormContainer} />
    <AuthRoute path="/signup" component={SessionFormContainer} />
    <Route exact path="/spots" component={ SpotSearchContainer } />
  </div>
);

export default App;
