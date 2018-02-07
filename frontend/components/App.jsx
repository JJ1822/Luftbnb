import React from 'react';
import {Route} from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import MainPageContainer from './main_page/main_page_container';
import SessionFormContainer from './session_form/session_form_container';
import SpotSearchContainer from './spot_search/spot_search_container';
import SpotFormContainer from './spot_form/spot_form_container';
import SpotShowContainer from './spot_show/spot_show_container';

const App = () => (
  <div>
    <header>
      <Route path="/" component={ MainPageContainer } />
    </header>
    <AuthRoute path="/login" component={SessionFormContainer} />
    <AuthRoute path="/signup" component={SessionFormContainer} />
    <Route exact path="/spots" component={ SpotSearchContainer } />
    <Route exact path="/host" component={ SpotFormContainer } />
    <Route path="/spots/:spotId" component={ SpotShowContainer } />
  </div>
);

export default App;
